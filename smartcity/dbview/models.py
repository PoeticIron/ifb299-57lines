from django.db import models

# Create your models here.

class Colleges(models.Model):
    name = models.CharField(max_length=100)
    address = models.CharField(max_length=100)
    departments = models.CharField(max_length=100)
    email = models.EmailField()
    Lat = models.CharField(max_length=30)
    Lon = models.CharField(max_length=30)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = "Colleges"

class Libraries(models.Model):
    name = models.CharField(max_length=100)
    address = models.CharField(max_length=100)
    phone_number = models.IntegerField()
    email = models.EmailField()
    Lat = models.CharField(max_length=30)
    Lon = models.CharField(max_length=30)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = "Libraries"

class Industries(models.Model):
    name = models.CharField(max_length=100)
    address = models.CharField(max_length=100)
    phone_number = models.IntegerField()
    email = models.EmailField()
    Lat = models.CharField(max_length=30)
    Lon = models.CharField(max_length=30)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = "Industries"

class Hotels(models.Model):
    name = models.CharField(max_length=100)
    address = models.CharField(max_length=100)
    phone_number = models.IntegerField()
    email = models.EmailField()
    Lat = models.CharField(max_length=30)
    Lon = models.CharField(max_length=30)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = "Hotels"

class Parks(models.Model):
    name = models.CharField(max_length=100)
    address = models.CharField(max_length=100)
    phone_number = models.IntegerField()
    email = models.EmailField()
    Lat = models.CharField(max_length=30)
    Lon = models.CharField(max_length=30)
    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = "Parks"

class Zoos(models.Model):
    name = models.CharField(max_length=100)
    address = models.CharField(max_length=100)
    phone_number = models.IntegerField()
    email = models.EmailField()
    Lat = models.CharField(max_length=30)
    Lon = models.CharField(max_length=30)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = "Zoos"

class Museums(models.Model):
    name = models.CharField(max_length=100)
    address = models.CharField(max_length=100)
    phone_number = models.IntegerField()
    email = models.EmailField()
    Lat = models.CharField(max_length=30)
    Lon = models.CharField(max_length=30)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = "Museums"

class Restaurants(models.Model):
    name = models.CharField(max_length=100)
    address = models.CharField(max_length=100)
    phone_number = models.IntegerField()
    email = models.EmailField()
    Lat = models.CharField(max_length=30)
    Lon = models.CharField(max_length=30)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = "Restaurants"

class Malls(models.Model):
    name = models.CharField(max_length=100)
    address = models.CharField(max_length=100)
    phone_number = models.IntegerField()
    email = models.EmailField()
    Lat = models.CharField(max_length=30)
    Lon = models.CharField(max_length=30)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = "Malls"   
