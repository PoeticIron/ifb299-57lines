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

class Libraries(models.Model):
    library_name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    phone_number = models.IntegerField()
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
            self, self.library_name, self.address, self.phone_number, self.email)

class Industries(models.Model):
    industry_name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    industry_type = models.CharField(max_length=30)
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
            self, self.industry_name, self.address, self.industry_type, self.email)

class Hotels(models.Model):
    hotel_name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    phone_number = models.IntegerField()
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
            self, self.hotel_name, self.address, self.phone_number, self.email)

class Parks(models.Model):
    park_name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    phone_number = models.IntegerField()
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
            self, self.park_name, self.address, self.phone_number, self.email)

class Zoos(models.Model):
    zoo_name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    phone_number = models.IntegerField()
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
            self, self.zoo_name, self.address, self.phone_number, self.email)

class Museums(models.Model):
    museum_name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    phone_number = models.IntegerField()
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
            self, self.museum_name, self.address, self.phone_number, self.email)

class Restaurants(models.Model):
    restaurant_name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    phone_number = models.IntegerField()
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
            self, self.restaurant_name, self.address, self.phone_number, self.email)

class Malls(models.Model):
    mall_name = models.CharField(max_length=30)
    address = models.CharField(max_length=30)
    phone_number = models.IntegerField()
    email = models.EmailField()

    def __unicode__(self):

        return "{0} {1} {2} {3} {4}".format(
            self, self.mall_name, self.address, self.phone_number, self.email)
    
