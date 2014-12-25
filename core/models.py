from datetime import datetime
from django.db import models
from glados_auth.models import GladosUser


class Contest(models.Model):
    name = models.CharField(max_length=256, null=False)
    description = models.TextField()
    start = models.DateTimeField(null=False, default=datetime.now)
    end = models.DateTimeField()
    default_judge = models.ForeignKey('Judge', related_name='default_judge')


class Judge(models.Model):
    path = models.CharField(max_length=256, null=False)
    contest = models.ForeignKey(Contest, null=False)


class Match(models.Model):
    judge = models.ForeignKey(Judge, null=False)
    start = models.DateTimeField(null=False, default=datetime.now)


class MatchLog(models.Model):
    match = models.ForeignKey(Match, null=False)
    time = models.DateTimeField(null=False, default=datetime.now)
    body = models.TextField(null=False)
    priority = models.IntegerField(null=False, default=0)


class Program(models.Model):
    user = models.ForeignKey(GladosUser, null=False)
    contest = models.ForeignKey(Contest, null=False)
    name = models.CharField(max_length=256, null=False)
    application_time = models.DateTimeField(null=False, default=datetime.now)
    wins = models.IntegerField(null=False, default=0)
    defeats = models.IntegerField(null=False, default=0)
    ties = models.IntegerField(null=False, default=0)


class ProgramMatch(models.Model):
    match = models.ForeignKey(Match, null=False)
    program = models.ForeignKey(Program, null=False)
    score = models.IntegerField(null=False, default=0)
    comment = models.TextField()
