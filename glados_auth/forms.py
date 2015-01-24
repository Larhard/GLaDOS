from django.contrib.auth import get_user_model
from django.contrib.auth.forms import UserChangeForm, UserCreationForm


class GladosUserChangeForm(UserChangeForm):
    class Meta(UserChangeForm.Meta):
        model = get_user_model()


class GladosUserCreationForm(UserCreationForm):
    def __init__(self, *args, **kwargs):
        super(GladosUserCreationForm, self).__init__(*args, **kwargs)

    class Meta(UserCreationForm.Meta):
        model = get_user_model()
