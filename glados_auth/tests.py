from django.contrib.auth import get_user_model
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
