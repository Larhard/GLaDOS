# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0005_auto_20150124_1655'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='judge',
            name='contest',
        ),
    ]
