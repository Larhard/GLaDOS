from django.contrib import admin
from core.models import *


class ContestAdmin(admin.ModelAdmin):
    fields = [
        'name',
        'description',
        'start',
        'end',
        'default_judge',
    ]


class JudgeAdmin(admin.ModelAdmin):
    fields = [
        'path',
        'contest',
    ]


class MatchAdmin(admin.ModelAdmin):
    fields = [
        'judge',
        'contest',
    ]


class MatchLogAdmin(admin.ModelAdmin):
    fields = [
        'match',
        'time',
        'body',
        'priority',
    ]


class ProgramAdmin(admin.ModelAdmin):
    fields = [
        'user',
        'contest',
        'name',
        'application_time',
        'wins',
        'defeats',
        'ties',
    ]


class ProgramMatchAdmin(admin.ModelAdmin):
    fields = [
        'match',
    ]


admin.site.register(Contest, ContestAdmin)
admin.site.register(Judge, JudgeAdmin)
admin.site.register(Match, MatchAdmin)
admin.site.register(MatchLog, MatchLogAdmin)
admin.site.register(Program, ProgramAdmin)
admin.site.register(ProgramMatch, ProgramMatchAdmin)
