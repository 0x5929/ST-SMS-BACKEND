import re
import uuid

from django.apps import apps
from django.db.models.expressions import Value
from rest_framework.exceptions import ValidationError


class GMSValidator:

    # used by RecordSerializers
    @staticmethod
    def reference_does_not_change_on_updates(value, instance, reference):
        err_msg = 'This field is immutable once set.'

        if not instance:
            return value
        # note we may need to convert into str(UUID) if this complains
        if instance and str(getattr(instance, reference)) == str(value):
            return value

        raise ValidationError(err_msg)

    # used by RecordSerializers
    @staticmethod
    def no_duplicate_records(data, model_name):
        err_msg = 'The record you are trying to add already exist in this rotation.'

        # first, grab rotation ID:
        # note the following may not work, thats why i only grabbed student id, to grab student from db, and evaluate its belonging rotation's uuid
        # current_rot_id = uuid.UUID(str(data.get('student').get(
        #    'rotation').get('rotation_uuid')))

        # get current student obj
        current_student_id = uuid.UUID(str(data.get('student')))
        if 'CNA' in model_name:
            StudentModel = apps.get_model('gms', 'CNAStudent')
        elif 'HHA' in model_name:
            StudentModel = apps.get_model('gms', 'HHAStudent')

        current_student = StudentModel.objects.get(
            student_id__exact=current_student_id)

        # get current rotation ID:
        current_rot_id = current_student.rotation.rotation_uuid

        # second, grab topic
        current_topic = data.get('topic')

        # third, check if record exist with rotation_id and record topic
        # apps.get_model is like import
        RecordModel = apps.get_model('gms', model_name)

        record = RecordModel.objects.filter(
            student__rotation__rotation_id__exact=current_rot_id,
            topic__exact=current_topic)

        if len(record) > 0:
            raise ValidationError(err_msg)

        return data

    # used by StudentSerializers

    @staticmethod
    def no_duplicate_students(data, model_name):
        err_msg = 'The student you are trying to add already exist in this rotation.'

        current_rot_id = uuid.UUID(
            str(data.get('rotation')))

        first_name = data.get('first_name')
        last_name = data.get('last_name')

        # check if the current rotation has a student with the same first and last name
        # checking for both CNAStudent and HHAStudent models
        StudentModel = apps.get_model('gms', model_name)
        student = StudentModel.objects.filter(
            rotation__rotation_id__exact=current_rot_id,
            first_name__iexact=first_name,
            last_name__iexact=last_name)

        # raise validationError, duplicate student in rotation
        if len(student) > 0:
            raise ValidationError(err_msg)

        return data

    # used by RotationSerializers
    @staticmethod
    def date_checker(data):
        err_msg = 'Please enter an end date after the start date of the program rotation.'

        if data.get('start_date') > data.get('end_date'):
            raise ValidationError(err_msg)

        return data

    # used by RotationSerializers
    @staticmethod
    def ensure_same_school_name(data, request):
        err_msg = 'You may only work on your own school\'s resource, please try changing the school name.'
        request_user_school = request.user.school_name
        school_name = data.get('school_name')

        if request_user_school == school_name:
            return data
        else:
            raise ValidationError(err_msg)