# Generated by Django 3.2.7 on 2021-09-26 22:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sms', '0005_alter_student_student_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='student',
            name='phone_number',
            field=models.CharField(max_length=12),
        ),
    ]
