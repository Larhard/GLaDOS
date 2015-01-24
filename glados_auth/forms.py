from django.contrib.auth import get_user_model
from django import forms
from django.contrib.auth.forms import UserChangeForm, UserCreationForm


class GladosUserChangeForm(UserChangeForm):
    class Meta(UserChangeForm.Meta):
        model = get_user_model()


class GladosUserCreationForm(UserCreationForm):
    def __init__(self, *args, **kwargs):
        super(GladosUserCreationForm, self).__init__(*args, **kwargs)

    class Meta(UserCreationForm.Meta):
        model = get_user_model()

    def clean_username(self):
        username = self.cleaned_data["username"]
        return username
        model = self.Meta.model
        try:
            model.objects.get_by_natural_key(username)
        except model.DoesNotExist:
            return username
        except model.MultipleObjectsReturned:
            pass
        raise forms.ValidationError(
            self.error_messages['duplicate_username'],
            code='duplicate_username',
            )
