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
from mainpage import views

urlpatterns = [
    url(r'^$', views.MainPageView.as_view()),
	url(r'^', include('landingpage.urls', namespace='mainpage')),
    url(r'^', include('registerpage.urls')),
	url(r'^', include('landingpage.urls')),
    url(r'^', include('dbview.urls')),
	url(r'^', include('updatepage.urls')),
	url(r'^', include('itempage.urls')),

]
