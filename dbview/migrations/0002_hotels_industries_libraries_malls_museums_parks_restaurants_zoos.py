# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('dbview', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Hotels',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('hotel_name', models.CharField(max_length=30)),
                ('address', models.CharField(max_length=30)),
                ('phone_number', models.IntegerField()),
                ('email', models.EmailField(max_length=254)),
            ],
        ),
        migrations.CreateModel(
            name='Industries',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('industry_name', models.CharField(max_length=30)),
                ('address', models.CharField(max_length=30)),
                ('industry_type', models.CharField(max_length=30)),
                ('email', models.EmailField(max_length=254)),
            ],
        ),
        migrations.CreateModel(
            name='Libraries',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('library_name', models.CharField(max_length=30)),
                ('address', models.CharField(max_length=30)),
                ('phone_number', models.IntegerField()),
                ('email', models.EmailField(max_length=254)),
            ],
        ),
        migrations.CreateModel(
            name='Malls',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('mall_name', models.CharField(max_length=30)),
                ('address', models.CharField(max_length=30)),
                ('phone_number', models.IntegerField()),
                ('email', models.EmailField(max_length=254)),
            ],
        ),
        migrations.CreateModel(
            name='Museums',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('museum_name', models.CharField(max_length=30)),
                ('address', models.CharField(max_length=30)),
                ('phone_number', models.IntegerField()),
                ('email', models.EmailField(max_length=254)),
            ],
        ),
        migrations.CreateModel(
            name='Parks',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('park_name', models.CharField(max_length=30)),
                ('address', models.CharField(max_length=30)),
                ('phone_number', models.IntegerField()),
                ('email', models.EmailField(max_length=254)),
            ],
        ),
        migrations.CreateModel(
            name='Restaurants',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('restaurant_name', models.CharField(max_length=30)),
                ('address', models.CharField(max_length=30)),
                ('phone_number', models.IntegerField()),
                ('email', models.EmailField(max_length=254)),
            ],
        ),
        migrations.CreateModel(
            name='Zoos',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('zoo_name', models.CharField(max_length=30)),
                ('address', models.CharField(max_length=30)),
                ('phone_number', models.IntegerField()),
                ('email', models.EmailField(max_length=254)),
            ],
        ),
    ]
