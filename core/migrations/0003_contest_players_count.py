# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0002_auto_20141225_2154'),
    ]

    operations = [
        migrations.AddField(
            model_name='contest',
            name='players_count',
            field=models.IntegerField(default=0),
            preserve_default=False,
        ),
    ]
