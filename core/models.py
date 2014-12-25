from datetime import datetime
from django.db import models
from glados_auth.models import GladosUser


class Contest(models.Model):
    name = models.CharField(max_length=256)
    description = models.TextField(null=True, blank=True)
    start = models.DateTimeField(default=datetime.now)
    end = models.DateTimeField(null=True, blank=True)
    default_judge = models.ForeignKey('Judge', related_name='default_judge', null=True, blank=True)


class Judge(models.Model):
    path = models.CharField(max_length=256)
    contest = models.ForeignKey(Contest)


class Match(models.Model):
    judge = models.ForeignKey(Judge)
    contest = models.ForeignKey(Contest)
    start = models.DateTimeField(default=datetime.now)


class MatchLog(models.Model):
    match = models.ForeignKey(Match)
    time = models.DateTimeField(default=datetime.now)
    body = models.TextField()
    priority = models.IntegerField(default=0)


class Program(models.Model):
    user = models.ForeignKey(GladosUser)
    contest = models.ForeignKey(Contest)
    name = models.CharField(max_length=256)
    application_time = models.DateTimeField(default=datetime.now)
    wins = models.IntegerField(default=0)
    defeats = models.IntegerField(default=0)
    ties = models.IntegerField(default=0)


class ProgramMatch(models.Model):
    match = models.ForeignKey(Match)
    program = models.ForeignKey(Program)
    score = models.IntegerField(default=0, null=True, blank=True)
    comment = models.TextField(null=True, blank=True)
