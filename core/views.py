import git
import os
import requests
import hmac

from hashlib import sha1
from ipaddress import ip_address, ip_network
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response

from django.conf import settings

BASE_DIR = getattr(settings, 'BASE_DIR')
GITHOOK_SECRET = getattr(settings, 'GITHOOK_SECRET')

class GitPullView(APIView):
    """
    GitPullView

    For CI/CD purpose
    called when remote main/master is updated 
    via merge or push

    """

    # bypassing any authentication or permissions
    permission_classes = []
    authentication_classes = []

    def post(self, request, *args, **kwargs):
        """
        This route is only hit by githooks

        Security implementations: 
        1. whitelist github IP
        2. establish and compare secret key hash

        """

        # Verify if request came from GitHub
        if self.is_github(request) == True:
            
            # match secret signature
            if self.verified_signature(request) == True:

                repo = git.Repo(os.path.join(BASE_DIR, '../.git'))
                repo.remotes.origin.pull()

                return Response({"status" : "git pull success"}, status=status.HTTP_200_OK)



    def is_github(self, request):
        # https://simpleisbetterthancomplex.com/tutorial/2016/10/31/how-to-handle-github-webhooks-using-django.html
        forwarded_for = u'{}'.format(request.META.get('HTTP_X_FORWARDED_FOR'))
        client_ip_address = ip_address(forwarded_for)
        whitelist = requests.get('https://api.github.com/meta').json()['hooks']

        for valid_ip in whitelist:
            if client_ip_address in ip_network(valid_ip):
                break
            else:
                return Response({ "error" : "Only github is allowed at this endpoint." }, status=status.HTTP_403_FORBIDDEN)

        return True

    def verified_signature(self, request):
        # grab singature
        header_signature = request.META.get('HTTP_X_HUB_SIGNATURE')
        if header_signature is None:
            return Response({ "error" : "No secret available" }, status=status.HTTP_403_FORBIDDEN)

        sha_name, signature = header_signature.split('=')
        if sha_name != 'sha1':
            return Response({ "error" : "Hash not SHA1, not implemented" }, status=status.HTTP_501_NOT_IMPLEMENTED)

        mac = hmac.new(force_bytes(GITHOOK_SECRET), msg=force_bytes(request.body), digestmod=sha1)
        
        # compare signatures
        if not hmac.compare_digest(force_bytes(mac.hexdigest()), force_bytes(signature)):
            return Response({ "error" : "Incorrect Secret" }, status=status.HTTP_403_FORBIDDEN)

        return True