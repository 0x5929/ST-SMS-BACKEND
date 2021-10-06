from rest_framework import viewsets
from django_filters import rest_framework as filters

from .filters import SMSFilter
from .permissions import IsAuthenticatedOfficeUser, IsAuthenticatedOfficeStaff, IsAuthenticatedOfficeAdmin, IsAuthenticatedOfficeUserToReadOnly, IsSuperuser
from .models import School, Program, Rotation, Student
from .serializers import SchoolSerializer, ProgramSerializer, RotationSerializer, StudentSerializer


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
        IsSuperuser | IsAuthenticatedOfficeAdmin | IsAuthenticatedOfficeStaff | IsAuthenticatedOfficeUser]

    filter_backends = (filters.DjangoFilterBackend,)
    filterset_class = SMSFilter

    def get_queryset(self):
        return Student.objects.get_query(self.request)