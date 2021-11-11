from rest_framework import viewsets, status
from rest_framework.views import APIView
from rest_framework.response import Response
from django_filters import rest_framework as filters

from .filters import SMSFilter
from .permissions import IsAuthenticatedOfficeUserToReadOnly, IsAuthenticatedOfficeUserButCannotDelete, IsAuthenticatedOfficeStaff, IsAuthenticatedOfficeAdmin, IsSuperuser
from .models import School, Program, Rotation, Student
from .serializers import SchoolSerializer, ProgramSerializer, RotationSerializer, StudentSerializer
from .utils import FilterHandler, GoogleSheetDataDumpHanlder

from .google_sheets import GoogleSheet

from core.settings.constants import SCHOOL_NAMES


class SchoolView(viewsets.ModelViewSet):
    serializer_class = SchoolSerializer
    permission_classes = [
        IsSuperuser | IsAuthenticatedOfficeUserToReadOnly]

    def get_queryset(self):
        return School.objects.get_query(self.request)


class ProgramView(viewsets.ModelViewSet):
    serializer_class = ProgramSerializer
    permission_classes = [
        IsSuperuser | IsAuthenticatedOfficeAdmin | IsAuthenticatedOfficeUserToReadOnly]

    def get_queryset(self):
        return Program.objects.get_query(self.request)


class RotationView(viewsets.ModelViewSet):
    serializer_class = RotationSerializer
    permission_classes = [
        IsSuperuser | IsAuthenticatedOfficeAdmin | IsAuthenticatedOfficeStaff | IsAuthenticatedOfficeUserToReadOnly]

    def get_queryset(self):
        return Rotation.objects.get_query(self.request)


class StudentView(viewsets.ModelViewSet):
    serializer_class = StudentSerializer

    permission_classes = [
        IsSuperuser | IsAuthenticatedOfficeAdmin | IsAuthenticatedOfficeStaff | IsAuthenticatedOfficeUserButCannotDelete]

    filter_backends = (filters.DjangoFilterBackend,)
    filterset_class = SMSFilter

    def get_queryset(self):
        return Student.objects.get_query(self.request)

    # to ensure query parameters are done correctly
    def list(self, request, *args, **kwargs):
        if not FilterHandler.is_valid_query_params(request.query_params, SMSFilter.Meta.fields):
            return Response([])
        return super(StudentView, self).list(request, *args, **kwargs)


class GoogleSheetDataDumpView(APIView):
    """
    GoogleSheetDataDumpView

    Uses the most basic class based view and
    edit only field we need

    """
    permission_classes = [IsSuperuser]

    def get(self, request):
        spreadsheet_id = request.query_params.get('ssid', None)
        sheet_id = request.query_params.get('sid', None)
        school_name = request.query_params.get('school_name', None)

        try:
            if spreadsheet_id and sheet_id and school_name not in SCHOOL_NAMES:

                sheet = GoogleSheetDataDumpHanlder.auth_and_get_sheet(
                    GoogleSheet, spreadsheet_id, sheet_id)

                res_data = GoogleSheetDataDumpHanlder.get_datadump_res(sheet, school_name)
                return Response(res_data, status=status.HTTP_200_OK)
            else:
                err_data = {
                    'error': 'Invalid spreadsheet id (ssid) or sheet id (sid) or school name (school_name) in GET params.'}
                return Response(err_data, status=status.HTTP_400_BAD_REQUEST)

        except Exception as e:
            raise e
            err_data = {
                'error':  repr(e)}

            return Response(err_data, status=status.HTTP_400_BAD_REQUEST)
