# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import core.models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0005_auto_20150124_1655'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contest',
            name='players_count',
            field=models.IntegerField(validators=[core.models.Validator('lambda k: k > 0', 'players count not positive')]),
            preserve_default=True,
        ),
    ]
