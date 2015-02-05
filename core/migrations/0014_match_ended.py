# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0013_program_source_code'),
    ]

    operations = [
        migrations.AddField(
            model_name='match',
            name='ended',
            field=models.BooleanField(default=False),
            preserve_default=True,
        ),
    ]
