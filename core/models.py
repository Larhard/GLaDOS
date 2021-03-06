from core.validators import Validator
from django.core.exceptions import ValidationError
from django.db import models
from django.db.models import Sum
from django.utils import timezone
from glados_auth.models import GladosUser
from utils.django.models import CleanModel


class Contest(CleanModel):
    name = models.CharField(max_length=256, unique=True)
    description = models.TextField(null=True, blank=True)
    start = models.DateTimeField(default=timezone.now)
    end = models.DateTimeField(null=True, blank=True)
    default_judge = models.ForeignKey('Judge', related_name='default_judge', null=True, blank=True)
    players_count = models.IntegerField(validators=[Validator('lambda k: k > 0', "players count not positive")])

    def clean(self):
        errors = {}

        if self.default_judge is not None:
            self.default_judge.was_default_judge = True
            self.default_judge.save()

        if self.end is not None and self.end < self.start:
            errors['end'] = "End can not occur before start."
        if errors:
            raise ValidationError(errors)

    def __unicode__(self):
        return "{} [{}]".format(self.name, self.id)


class Judge(CleanModel):
    path = models.CharField(max_length=256)
    name = models.CharField(max_length=250, null=True, blank=True)
    init_parameters = models.TextField(null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    was_default_judge = models.BooleanField(default=False)

    def __unicode__(self):
        return "[{}] {}".format(self.id, self.name or self.path)


class Match(CleanModel):
    judge = models.ForeignKey(Judge)
    contest = models.ForeignKey(Contest)
    start = models.DateTimeField(default=timezone.now)
    ended = models.BooleanField(default=False)

    def get_user_set(self):
        result = set()
        for match_result in self.programmatch_set.all():
            result.add(match_result.program.user)
        return result

    def clean(self):
        errors = {}
        if self.judge.was_default_judge != True:
            errors['was_default_judge'] = "The judge was never default, it could not test this match."
        if self.contest.start > self.start:
            errors['time_inconsistency'] = "Match could not start before the contest it belongs to."
        if errors:
            raise ValidationError(errors)

    def __unicode__(self):
        return "{}".format(self.id)


class MatchLog(CleanModel):
    match = models.ForeignKey(Match)
    time = models.DateTimeField(default=timezone.now)
    body = models.TextField()
    priority = models.IntegerField(default=0)

    def clean(self):
        errors = {}
        if self.time < self.match.start:
            errors['time'] = "Logs time set earlier than match log."
        if errors:
            raise ValidationError(errors)

    def __unicode__(self):
        return "{} ({}) [{}]".format(self.match_id, self.priority, self.id)


class Program(CleanModel):
    user = models.ForeignKey(GladosUser)
    contest = models.ForeignKey(Contest)
    name = models.CharField(max_length=256, null=True, blank=True)
    application_time = models.DateTimeField(default=timezone.now)
    wins = models.IntegerField(default=0)
    defeats = models.IntegerField(default=0)
    ties = models.IntegerField(default=0)
    source_code = models.FileField(null=True, blank=True)

    def clean_name(self):
        name = self.name
        if name == '':
            return None
        return name

    def clean_fields(self, exclude=None):
        super(Program, self).clean_fields(exclude)
        self.name = self.clean_name()

    def get_score(self):
        return self.programmatch_set.aggregate(value=Sum('score'))

    def clean(self):
        errors = {}
        if self.wins < 0:
            errors['wins'] = "should not be negative"
        if self.defeats < 0:
            errors['defeats'] = "should not be negative"
        if self.ties < 0:
            errors['ties'] = "should not be negative"

        if self.application_time < self.contest.start:
            errors['application_time'] = "Program can't be submitted before contest"

        if errors:
            raise ValidationError(errors)

    def __unicode__(self):
        return self.name or "[{}]".format(self.id)

    class Meta:
        unique_together = ('name', 'user')



class ProgramMatch(models.Model):
    match = models.ForeignKey(Match)
    program = models.ForeignKey(Program)
    score = models.IntegerField(null=True, blank=True)
    comment = models.TextField(null=True, blank=True)

    class Meta:
        unique_together = ('match', 'program')

    def clean(self):
        errors = {}
        if self.program.contest != self.match.contest:
            errors['program_match'] = "Inconsistent data about contest"

        if errors:
            raise ValidationError(errors)

    def __unicode__(self):
        return "{} {}".format(self.match_id, self.program_id)


