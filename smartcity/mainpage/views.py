from django.shortcuts import render
from django.views.generic import TemplateView
from django.http import HttpResponse, HttpResponseRedirect

from dbview.models import *

# Create your views here.
class MainPageView(TemplateView):   
    def get(self, request, **kwargs):
        colleges = Colleges.objects.all()
        industries = Industries.objects.all()
        hotels = Hotels.objects.all()
        parks = Parks.objects.all()
        zoos = Zoos.objects.all()
        museums = Museums.objects.all()
        malls = Malls.objects.all()
        restaurants = Restaurants.objects.all()
        libraries = Libraries.objects.all()

        return render(request, 'mainpage.html', {'colleges': colleges, 'libs': libraries, 'industries':industries, 'hotels':hotels, 'parks':parks, 'zoos':zoos, 'museums':museums,'malls':malls,'restaurants':restaurants,'libraries':libraries	})
		

        

