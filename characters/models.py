from django.db import models


class FileDump(models.Model):
    upload = models.FileField(upload_to="characters/")
    timestamp = models.DateTimeField(auto_now_add=True, blank=True)
