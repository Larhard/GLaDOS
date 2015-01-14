from django.db import models
from django.utils import timezone
from glados_auth.models import GladosUser


class Contest(models.Model):
    name = models.CharField(max_length=256)
    description = models.TextField(null=True, blank=True)
    start = models.DateTimeField(default=timezone.now)
    end = models.DateTimeField(null=True, blank=True)
    default_judge = models.ForeignKey('Judge', related_name='default_judge', null=True, blank=True)
    players_count = models.IntegerField()

    def clean(self):
        if end < start:
            raise forms.ValidationError("End can not occur before start.")

    def __unicode__(self):
        return "{} [{}]".format(self.name, self.id)


class Judge(models.Model):
    path = models.CharField(max_length=256)
    contest = models.ForeignKey(Contest)
    was_default_judge = models.BooleanField(default=False)

    def __unicode__(self):
        return "{} [{}]".format(self.path, self.id)


class Match(models.Model):
    judge = models.ForeignKey(Judge)
    contest = models.ForeignKey(Contest)
    start = models.DateTimeField(default=timezone.now)

    def clean(self):
        if judge.was_default_judge != True:
            raise forms.ValidationError("The judge was never default, it could not test this match.")

    def __unicode__(self):
        return "{}".format(self.id)


class MatchLog(models.Model):
    match = models.ForeignKey(Match)
    time = models.DateTimeField(default=timezone.now)
    body = models.TextField()
    priority = models.IntegerField(default=0)

    def clean(self):
        if time < match.start:
            raise forms.ValidationError("Logs time set earlier than match log.")

    def __unicode__(self):
        return "{} ({}) [{}]".format(self.match_id, self.priority, self.id)


class Program(models.Model):
    user = models.ForeignKey(GladosUser)
    contest = models.ForeignKey(Contest)
    name = models.CharField(max_length=256)
    application_time = models.DateTimeField(default=timezone.now)
    wins = models.IntegerField(default=0)
    defeats = models.IntegerField(default=0)
    ties = models.IntegerField(default=0)

    def __unicode__(self):
        return "{} [{}]".format(self.name, self.id)


class ProgramMatch(models.Model):
    match = models.ForeignKey(Match)
    program = models.ForeignKey(Program)
    score = models.IntegerField(null=True, blank=True)
    comment = models.TextField(null=True, blank=True)

    class Meta:
        unique_together = ('match', 'program')

    def __unicode__(self):
        return "{} {}".format(self.match_id, self.program_id)
