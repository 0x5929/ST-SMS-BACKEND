import pytest
from rest_framework.exceptions import ValidationError

from cms.models import Client, Note
from cms.serializers import ClientSerializer, NoteSerializer
from cms.validators import CMSValidator

from .cms_constants import (TEST_CAP_MATCHING_STR, 
                            TEST_NON_MATCHING_STR, 
                            TEST_MATCHING_PHONE_NO,
                            TEST_NON_MATCHING_PHONE)

class User:
    def __init__(self, superuser=False, admin=False):
        self.school_name = 'STI'
        self.is_superuser = superuser
        self.is_admin = admin
        self.is_authenticated = None
        self.programs = None

class Request:
    def __init__(self, superuser=False, admin=False):
        self.user = User(superuser=superuser, admin=admin)
        self.method = None


@pytest.mark.cms
class TestCMSValidators:

    @pytest.fixture
    def get_reg_request_obj(self):
        return Request()

    @pytest.fixture
    def get_admin_request_obj(self):
        return Request(admin=True)

    @pytest.fixture
    def get_superuser_request_obj(self):
        return Request(superuser=True)

    @pytest.fixture
    def get_client_obj(self):
        return Client.objects.all().first()

    @pytest.fixture
    def get_note_obj(self):
        return Note.objects.all().first()
    
    @pytest.fixture
    def get_client_serializer(self):
        return ClientSerializer()

    @pytest.fixture
    def get_note_serializer(self):
        return NoteSerializer()
    
    def test_reference_does_not_change_on_updates_success(self, get_note_obj):
        instance = get_note_obj
        reference = 'client'
        value = instance.client

        assert CMSValidator.reference_does_not_change_on_updates(value, instance, reference) == value

    def test_reference_does_not_change_on_updates_POST_success(self, get_note_obj):
        instance = None
        reference = 'client'
        value = '__RANDOM_STR__'

        assert CMSValidator.reference_does_not_change_on_updates(value, instance, reference) == value


    def test_reference_does_not_change_on_updates_failure(self, get_note_obj):
        instance = get_note_obj
        reference = 'client'
        value = '__RANDOM_STR__'

        with pytest.raises(ValidationError):
            CMSValidator.reference_does_not_change_on_updates(value, instance, reference)


    def test_no_special_chars_and_captialize_string_success(self):
        matching_str = TEST_CAP_MATCHING_STR

        assert CMSValidator.no_special_chars_and_captialize_string(
            matching_str) == TEST_CAP_MATCHING_STR

    def test_no_special_chars_and_captialize_string_failure(self):

        with pytest.raises(ValidationError):
            for string in TEST_NON_MATCHING_STR:
                CMSValidator.no_special_chars_and_captialize_string(
                    string)


    def test_phone_number_format_checker_success(self):
        matching_phone_num = TEST_MATCHING_PHONE_NO

        assert CMSValidator.phone_number_format_checker(
            matching_phone_num) == matching_phone_num

    def test_phone_number_format_checker_failure(self):
        with pytest.raises(ValidationError):
            for phone_num in TEST_NON_MATCHING_PHONE:
                CMSValidator.phone_number_format_checker(phone_num)


    def test_ensure_same_school_name_success(self, get_client_obj, get_admin_request_obj):
        data = {'school_name' : get_client_obj.school_name}

        assert CMSValidator.ensure_same_school_name(data, get_admin_request_obj) == data


    def test_ensure_same_school_name_success_superuser(self, get_superuser_request_obj):
        data = {'school_name' : '__RANDOM_STR__'}

        assert CMSValidator.ensure_same_school_name(data, get_superuser_request_obj) == data

    def test_ensure_same_school_name_failure(self, get_reg_request_obj):
        data = {'school_name' : '__RANDOM_STR__'}

        with pytest.raises(ValidationError):
            CMSValidator.ensure_same_school_name(data, get_reg_request_obj)