import django.contrib.auth.models as django
from django.core.exceptions import ValidationError
from django.utils.translation import ugettext_lazy as _
from django.db import IntegrityError


class GladosUserManager(django.UserManager):
    def _create_user(self, username, *args, **kwargs):
        try:
            if username and self.get_by_natural_key(username):
                raise IntegrityError(self.model.USERNAME_FIELD + " not unique")
        except self.model.DoesNotExist:
            pass

        return super(GladosUserManager, self)._create_user(username, *args, **kwargs)

    def get_by_natural_key(self, username):
        return self.get(**{self.model.USERNAME_FIELD+'__iexact': username})


class GladosUser(django.AbstractUser):
    objects = GladosUserManager()

    def clean_username(self):
        username = self.username
        try:
            GladosUser.objects.get_by_natural_key(username)
        except self.DoesNotExist:
            return username
        except self.MultipleObjectsReturned:
            pass
        raise ValidationError(_("A user with that username already exists."))

    def clean(self):
        self.username = self.clean_username()

    def save(self, force_insert=False, force_update=False, using=None,
             update_fields=None):
        self.clean()
        super(GladosUser, self).save(force_insert, force_update, using, update_fields)

    def set_email(self, email):
        self.email = GladosUserManager.normalize_email(email)
