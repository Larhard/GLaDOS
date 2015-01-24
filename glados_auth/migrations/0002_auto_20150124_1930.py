# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('glados_auth', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='gladosuser',
            name='groups',
        ),
        migrations.RemoveField(
            model_name='gladosuser',
            name='is_superuser',
        ),
        migrations.RemoveField(
            model_name='gladosuser',
            name='user_permissions',
        ),
        migrations.AlterField(
            model_name='gladosuser',
            name='first_name',
            field=models.CharField(max_length=60, verbose_name='first name', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='gladosuser',
            name='last_name',
            field=models.CharField(max_length=60, verbose_name='last name', blank=True),
            preserve_default=True,
        ),
    ]
