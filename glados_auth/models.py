import django.contrib.auth.models as django
from django.contrib.auth.models import PermissionsMixin
from django.core import validators
from django.db import IntegrityError, models
from django.utils import timezone
from django.utils.translation import ugettext_lazy as _


class GladosUserManager(django.UserManager):
    def _create_user(self, username, *args, **kwargs):
        try:
            if username and self.get_by_natural_key(username):
                raise IntegrityError(self.model.USERNAME_FIELD + " not unique")
        except self.model.DoesNotExist:
            pass

        return super(GladosUserManager, self)._create_user(username, *args, **kwargs)

    def get_by_natural_key(self, username):
        return self.get(**{self.model.USERNAME_FIELD + '__iexact': username})


class GladosUser(django.AbstractBaseUser, PermissionsMixin):
    username = models.CharField(_('username'), max_length=30, unique=True,
                                help_text=_('Required. 30 characters or fewer. Letters, digits and '
                                            '@/./+/-/_ only.'),
                                validators=[
                                    validators.RegexValidator(r'^[\w.@+-]+$', _('Enter a valid username.'), 'invalid')
                                    ])
    first_name = models.CharField(_('first name'), max_length=60, blank=True)
    last_name = models.CharField(_('last name'), max_length=60, blank=True)
    email = models.EmailField(_('email address'), blank=True)
    is_staff = models.BooleanField(_('staff status'), default=False,
                                   help_text=_('Designates whether the user can log into this admin '
                                               'site.'))
    is_active = models.BooleanField(_('active'), default=True,
                                    help_text=_('Designates whether this user should be treated as '
                                                'active. Unselect this instead of deleting accounts.'))
    date_joined = models.DateTimeField(_('date joined'), default=timezone.now)

    objects = GladosUserManager()

    def set_email(self, email):
        self.email = GladosUserManager.normalize_email(email)

    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = ['email']

    class Meta:
        verbose_name = _('user')
        verbose_name_plural = _('users')

    def get_full_name(self):
        full_name = '%s %s' % (self.first_name, self.last_name)
        return full_name.strip()

    def get_short_name(self):
        return self.first_name
