from rest_framework import serializers

from .validators import CMSValidator
from .models import Client, Note


class NoteSerializer(serializers.ModelSerializer):
    client = serializers.PrimaryKeyRelatedField(
        queryset=Client.objects.all(), allow_null=False)

    class Meta:
        exclude = ('note_uuid',)
        model = Note

    def validate_client(self, value):
        return CMSValidator.reference_does_not_change_on_updates(value, self.instance, 'client')

    # def create(self, validated_data):
    #     return super(NoteSerializer, self).create(Note.objects.create_or_update_note(validated_data=validated_data))

    # def update(self, instance, validated_data):
    #     return super(NoteSerializer, self).update(*Note.objects.create_or_update_note(validated_data=validated_data, instance=instance))


class ClientSerializer(serializers.ModelSerializer):
    notes = NoteSerializer(many=True, read_only=True)

    class Meta:
        exclude = ('client_uuid',)
        model = Client

    def validate_first_name(self, value):
        return CMSValidator.no_special_chars_and_captialize_string(value)

    def validate_last_name(self, value):
        return CMSValidator.no_special_chars_and_captialize_string(value)

    def validate_phone_number(self, value):
        return CMSValidator.phone_number_format_checker(value)

    def validate_city(self, value):
        return CMSValidator.no_special_chars_and_captialize_string(value)

    def validate_school_name(self, data):
        return CMSValidator.ensure_same_school_name(data, self.context.get('request'))

    def validate(self, data):
        return CMSValidator.client_final_validation(self, data)
