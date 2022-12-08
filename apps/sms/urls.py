from .views import SchoolView, ProgramView, RotationView, StudentView, GoogleSheetDataDumpView, StudentStatisticsView

from rest_framework.routers import DefaultRouter
from django.urls import path

app_name = 'sms'

router = DefaultRouter()

router.register('schools', SchoolView, basename='schools')
router.register('programs', ProgramView, basename='programs')
router.register('rotations', RotationView, basename='rotations')
router.register('students', StudentView, basename='students')
# query usage: http://127.0.0.1:8000/api/sms/students/?<filter1_param>=<filter1_value>&<filter2_param>=<filter2_value>


urlpatterns = [
    # usage: http://127.0.0.1:8000/api/sms/google_sheet_datadump/?ssid=<spreadsheet id>&sid=<sheet id>&school_name=<school name value, ie: STI>
    # NOTE: this must be done with an empty database, if not levels of references won't be build properly
    # If needed to be done, do it locally, delete local DB, migraete and re-create superuser, load initial-data, then hit this endpoint, then reload the data returned from this endpoint
    path('google_sheet_datadump/', GoogleSheetDataDumpView.as_view()),

    # usage: http://127.0.0.1:8000/api/sms/student_statistics/
    path('student_statistics/', StudentStatisticsView.as_view()),
]

urlpatterns += router.urls
