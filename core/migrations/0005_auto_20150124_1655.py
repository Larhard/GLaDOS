# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import core.models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0004_judge_was_default_judge'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contest',
            name='players_count',
            field=models.IntegerField(validators=[core.models.Validator(b'lambda k: k > 0', b'players count not positive')]),
            preserve_default=True,
        ),
    ]
