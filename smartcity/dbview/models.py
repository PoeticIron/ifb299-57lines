from django.db import models

# Create your models here.

class Colleges(models.Model):
    college_name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    departments = models.CharField(max_length=30)
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
            self, self.college_name, self.address, self.departments, self.email)
