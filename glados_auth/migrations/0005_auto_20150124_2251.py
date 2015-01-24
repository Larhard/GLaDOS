# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('glados_auth', '0004_gladosusermanager'),
    ]

    operations = [
        migrations.DeleteModel(
            name='GladosUserManager',
        ),
        migrations.AlterField(
            model_name='gladosuser',
            name='first_name',
            field=models.CharField(max_length=30, verbose_name='first name', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='gladosuser',
            name='last_name',
            field=models.CharField(max_length=30, verbose_name='last name', blank=True),
            preserve_default=True,
        ),
    ]
