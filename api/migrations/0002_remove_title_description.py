# Generated by Django 3.0.5 on 2020-12-08 16:24

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='title',
            name='description',
        ),
    ]