# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0010_judge_init_parameters'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contest',
            name='name',
            field=models.CharField(unique=True, max_length=256),
            preserve_default=True,
        ),
    ]
