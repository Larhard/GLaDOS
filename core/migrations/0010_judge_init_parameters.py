# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0009_merge'),
    ]

    operations = [
        migrations.AddField(
            model_name='judge',
            name='init_parameters',
            field=models.TextField(null=True, blank=True),
            preserve_default=True,
        ),
    ]
