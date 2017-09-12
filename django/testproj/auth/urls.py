from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.index, name='register'),
    url(r'^', views.register, name='register'),
]
