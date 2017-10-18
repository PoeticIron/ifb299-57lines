from django.shortcuts import render
from django.views.generic import TemplateView

from dbview.models import *

# Create your views here.

class DbCollegeView(TemplateView):   
    def get(self, request, **kwargs):
        colleges = Colleges.objects.all()
        return render(request, 'colleges.html', {'colleges': colleges})

class DbLibraryView(TemplateView):   
    def get(self, request, **kwargs):
        libraries = Libraries.objects.all()
        return render(request, 'libraries.html', {'libraries': libraries})
		
def search(request):
    if request.method == 'POST':
        term = request.POST.get("term")
        colleges = Colleges.objects.filter(college_name__icontains=term)

    return render(request, 'results.html', {'colleges': colleges, })