# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-10-30 09:47
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dbview', '0006_auto_20171030_1946'),
    ]

    operations = [
        migrations.AddField(
            model_name='hotels',
            name='Lat',
            field=models.IntegerField(default=-27.4772),
        ),
        migrations.AddField(
            model_name='hotels',
            name='Lon',
            field=models.IntegerField(default=153.0278),
        ),
        migrations.AddField(
            model_name='industries',
            name='Lat',
            field=models.IntegerField(default=-27.4772),
        ),
        migrations.AddField(
            model_name='industries',
            name='Lon',
            field=models.IntegerField(default=153.0278),
        ),
        migrations.AddField(
            model_name='libraries',
            name='Lat',
            field=models.IntegerField(default=-27.4772),
        ),
        migrations.AddField(
            model_name='libraries',
            name='Lon',
            field=models.IntegerField(default=153.0278),
        ),
        migrations.AddField(
            model_name='malls',
            name='Lat',
            field=models.IntegerField(default=-27.4772),
        ),
        migrations.AddField(
            model_name='malls',
            name='Lon',
            field=models.IntegerField(default=153.0278),
        ),
        migrations.AddField(
            model_name='museums',
            name='Lat',
            field=models.IntegerField(default=-27.4772),
        ),
        migrations.AddField(
            model_name='museums',
            name='Lon',
            field=models.IntegerField(default=153.0278),
        ),
        migrations.AddField(
            model_name='parks',
            name='Lat',
            field=models.IntegerField(default=-27.4772),
        ),
        migrations.AddField(
            model_name='parks',
            name='Lon',
            field=models.IntegerField(default=153.0278),
        ),
        migrations.AddField(
            model_name='restaurants',
            name='Lat',
            field=models.IntegerField(default=-27.4772),
        ),
        migrations.AddField(
            model_name='restaurants',
            name='Lon',
            field=models.IntegerField(default=153.0278),
        ),
        migrations.AddField(
            model_name='zoos',
            name='Lat',
            field=models.IntegerField(default=-27.4772),
        ),
        migrations.AddField(
            model_name='zoos',
            name='Lon',
            field=models.IntegerField(default=153.0278),
        ),
    ]