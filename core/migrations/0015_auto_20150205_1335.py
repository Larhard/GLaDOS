# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0014_match_ended'),
    ]

    operations = [
        migrations.AlterUniqueTogether(
            name='program',
            unique_together=set([('name', 'user')]),
        ),
    ]
