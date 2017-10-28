from django.db import models

# Create your models here.

class Colleges(models.Model):
    name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    departments = models.CharField(max_length=30)
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
            self, self.name, self.address, self.departments, self.email)

class Libraries(models.Model):
    name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    phone_number = models.IntegerField()
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
            self, self.name, self.address, self.phone_number, self.email)

class Industries(models.Model):
    name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    phone_number = models.CharField(max_length=30)
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
            self, self.name, self.address, self.phone_number, self.email)

class Hotels(models.Model):
    name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    phone_number = models.IntegerField()
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
            self, self.name, self.address, self.phone_number, self.email)

class Parks(models.Model):
    name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    phone_number = models.IntegerField()
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
           self, self.name, self.address, self.phone_number, self.email)

class Zoos(models.Model):
    name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    phone_number = models.IntegerField()
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
            self, self.name, self.address, self.phone_number, self.email)

class Museums(models.Model):
    name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    phone_number = models.IntegerField()
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
            self, self.name, self.address, self.phone_number, self.email)

class Restaurants(models.Model):
    name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    phone_number = models.IntegerField()
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
            self, self.name, self.address, self.phone_number, self.email)

class Malls(models.Model):
    name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    phone_number = models.IntegerField()
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
            self, self.name, self.address, self.phone_number, self.email)
    
