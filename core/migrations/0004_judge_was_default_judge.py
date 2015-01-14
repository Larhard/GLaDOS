# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_contest_players_count'),
    ]

    operations = [
        migrations.AddField(
            model_name='judge',
            name='was_default_judge',
            field=models.BooleanField(default=False),
            preserve_default=True,
        ),
    ]
