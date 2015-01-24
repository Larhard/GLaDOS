from django.core.exceptions import ValidationError
from django.utils.deconstruct import deconstructible


@deconstructible
class Validator(object):
    def __init__(self, predicate, message):
        self.predicate = predicate
        self._predicate = eval(predicate)
        self.message = message

    def __call__(self, *args, **kwargs):
        if not self._predicate(*args, **kwargs):
            raise ValidationError(self.message)

    def __eq__(self, other):
        return (
            isinstance(other, Validator) and
            self.predicate == other.predicate and
            self.message == other.message
        )

    def __ne__(self, other):
        return not (self == other)

