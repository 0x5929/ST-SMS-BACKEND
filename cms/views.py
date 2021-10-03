from rest_framework import viewsets, permissions
from django_filters import rest_framework as filters

from .models import Client, Note
from .serializers import ClientSerializer, NoteSerializer
from .permissions import IsSuperuser
from .filters import CMSClientFilter, CMSNoteFilter


class ClientView(viewsets.ModelViewSet):
    serializer_class = ClientSerializer
    permission_classes = [IsSuperuser | permissions.IsAuthenticated]
    filter_backends = (filters.DjangoFilterBackend,)
    filterset_class = CMSClientFilter

    def get_queryset(self):
        return Client.objects.get_query(self.request)


class NoteView(viewsets.ModelViewSet):
    serializer_class = NoteSerializer
    permission_classes = [IsSuperuser | permissions.IsAuthenticated]
    filter_backends = (filters.DjangoFilterBackend,)
    filterset_class = CMSNoteFilter

    def get_queryset(self):
        return Note.objects.get_query(self.request)