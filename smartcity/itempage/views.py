from django.shortcuts import render
from django.views.generic import TemplateView
from django.http import HttpResponse, HttpResponseRedirect
from dbview.models import Colleges
# Create your views here.
class itempageView(TemplateView):   
	def get(self, request, **kwargs):
		if request.method == 'POST':
			return render(request, 'itempage.html', context=None)
		return render(request, 'itempage.html', context=None)	
		
def generate(request):
	if request.method == 'POST':
		name = request.POST.get("name")
		address = request.POST.get("address")
		phone = request.POST.get("phone")
		email = request.POST.get("email")
		lat = request.POST.get("lat")
		lon = request.POST.get("lon")
	return render(request, 'itempage.html', {'address':address, 'name':name, 'phone':phone, 'email':email, 'lat':lat, 'lon':lon})