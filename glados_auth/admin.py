from django.contrib import admin
from django.contrib.auth.admin import UserAdmin

from glados_auth.models import GladosUser


admin.site.register(GladosUser, UserAdmin)
