import django.contrib.auth.models as django
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

    def set_email(self, email):
        self.email = GladosUserManager.normalize_email(email)
