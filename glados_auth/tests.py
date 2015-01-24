from django.contrib.auth import get_user_model, authenticate
from django.core.exceptions import ValidationError
from django.db import IntegrityError
from django.test import TestCase


class AuthTests(TestCase):
    def test_register(self):
        User = get_user_model()

        exception = None
        try:
            User.objects.create_user("TestUser")
        except Exception as e:
            exception = e
        self.assertIsNone(exception,
                          exception.message if exception else "")

        exception = None
        try:
            User.objects.create_user("TestUser")
        except Exception as e:
            exception = e
        self.assertEqual(type(exception), IntegrityError, "Username not unique" +
                         ": " + exception.message if exception else "")

        exception = None
        try:
            User.objects.create_user("testuser")
        except Exception as e:
            exception = e
        self.assertEqual(type(exception), IntegrityError, "Username case-sensitive: " +
                         ": " + exception.message if exception else "")

        exception = None
        try:
            User.objects.create_superuser("testuser", "test@example.com", "admin1")
        except Exception as e:
            exception = e
        self.assertEqual(type(exception), IntegrityError, "Username case-sensitive" +
                         ": " + exception.message if exception else "")

    def test_save_register(self):
        User = get_user_model()

        exception = None
        try:
            user = User()
            user.username = 'a'
            user.save()
        except ValidationError as e:
            exception = e
        self.assertIsNone(exception, "could not create user")

        exception = None
        try:
            user = User()
            user.username = 'a'
            user.save()
        except (ValidationError, IntegrityError) as e:
            exception = e
        self.assertIsNotNone(exception, "case sensitive duplicate created")

        exception = None
        try:
            user = User()
            user.username = 'A'
            user.save()
        except (ValidationError, IntegrityError) as e:
            exception = e
        self.assertIsNotNone(exception, "case insensitive duplicate created")

    def test_login(self):
        User = get_user_model()
        username = 'test_user'
        username2 = 'ffskkkjaf'
        password = 'passwd'
        password2 = 'fafafwef'
        User.objects.create_user(username=username, password=password)

        user = authenticate(username=username, password=password)
        self.assertIsNotNone(user, 'valid authentication failed case sensitive')

        user = authenticate(username=username.upper(), password=password)
        self.assertIsNotNone(user, 'valid authentication failed case insensitive')

        user = authenticate(username=username2, password=password)
        self.assertIsNone(user, 'invalid authentication succeeded (wrong username)')

        user = authenticate(username=username, password=password2)
        self.assertIsNone(user, 'invalid authentication succeeded (wrong password)')

        user = authenticate(username=username2, password=password2)
        self.assertIsNone(user, 'invalid authentication succeeded (wrong username and password)')

