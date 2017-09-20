from django.shortcuts import render
from django.views.generic import TemplateView

from dbview.models import Colleges

# Create your views here.
class MainPageView(TemplateView):   
    def get(self, request, **kwargs):
        colleges = Colleges.objects.all()
        return render(request, 'mainpage.html', {'colleges': colleges})
            
        

