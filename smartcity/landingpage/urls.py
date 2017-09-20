"""smartcity URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from django.conf.urls import include, url
from landingpage import views
from registerpage.views import RegisterPageView
from mainpage.views import MainPageView
from dbview.views import *

urlpatterns = [
    url(r'^$', views.LoginPageView.as_view()),
    url(r'^registerpage/$', RegisterPageView.as_view()),
    url(r'^mainpage/$', MainPageView.as_view()),
    url(r'^colleges/$', DbCollegeView.as_view()),
    url(r'^libraries/$', DbLibraryView.as_view()),
]
