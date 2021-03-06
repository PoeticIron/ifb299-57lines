from django.shortcuts import render
from django.views.generic import TemplateView

from dbview.models import *

# Create your views here.

class DbCollegeView(TemplateView):   
    def get(self, request, **kwargs):
        data = Colleges.objects.all()
        return render(request, 'libraries.html', {'libraries': data})
class DbLibraryView(TemplateView):   
    def get(self, request, **kwargs):
        libraries = Libraries.objects.all()
        return render(request, 'libraries.html', {'libraries': libraries})
class DbHotelView(TemplateView):
    def get(self, request, **kwargs):
        data =  Hotels.objects.all()
        return render(request, 'libraries.html', {'libraries': data})
class DbIndustriesView(TemplateView):
    def get(self, request, **kwargs):
        data =  Industries.objects.all()
        return render(request, 'libraries.html', {'libraries': data})
class DbMallView(TemplateView):
    def get(self, request, **kwargs):
        data =  Malls.objects.all()
        return render(request, 'libraries.html', {'libraries': data})
class DbMuseumView(TemplateView):
    def get(self, request, **kwargs):
        data =  Museums.objects.all()
        return render(request, 'libraries.html', {'libraries': data})
class DbRestaurantView(TemplateView):
    def get(self, request, **kwargs):
        data =  Restaurants.objects.all()
        return render(request, 'libraries.html', {'libraries': data})
class DbParksView(TemplateView):
    def get(self, request, **kwargs):
        data =  Parks.objects.all()
        return render(request, 'libraries.html', {'libraries': data})
class DbZoosView(TemplateView):
    def get(self, request, **kwargs):
        data =  Zoos.objects.all()
        return render(request, 'libraries.html', {'libraries': data})
def search(request):
    if request.method == 'POST':
        term = request.POST.get("term")
        colleges = Colleges.objects.filter(name__icontains=term)
        industries = Industries.objects.filter(name__icontains=term)
        hotels = Hotels.objects.filter(name__icontains=term)
        parks = Parks.objects.filter(name__icontains=term)
        zoos = Zoos.objects.filter(name__icontains=term)
        museums = Museums.objects.filter(name__icontains=term)
        malls = Malls.objects.filter(name__icontains=term)
        restaurants = Restaurants.objects.filter(name__icontains=term)
        libraries = Libraries.objects.filter(name__icontains=term)

    return render(request, 'results.html', {'colleges': colleges, 'libs': libraries, 'industries':industries, 'hotels':hotels, 'parks':parks, 'zoos':zoos, 'museums':museums,'malls':malls,'restaurants':restaurants,'libraries':libraries	})
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	