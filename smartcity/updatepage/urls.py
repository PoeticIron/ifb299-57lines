from django.conf.urls import url
from updatepage import views

urlpatterns = [
    url(r'^$', views.UpdatePageView.as_view()),
        url(r'^update', views.update, name='update'),
]
