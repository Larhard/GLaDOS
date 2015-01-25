from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from glados_auth.forms import GladosUserChangeForm, GladosUserCreationForm

from glados_auth.models import GladosUser


class GladosUserAdmin(UserAdmin):
    fieldsets = ()
    form = GladosUserChangeForm
    add_form = GladosUserCreationForm


admin.site.register(GladosUser, GladosUserAdmin)
