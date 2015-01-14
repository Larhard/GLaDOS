from django.db import models


class CleanModel(models.Model):
    def save(self, *args, **kwargs):
        self.full_clean()
        super(CleanModel, self).save(*args, **kwargs)

    class Meta:
        abstract = True