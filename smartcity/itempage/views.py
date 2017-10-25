from django.shortcuts import render
from django.views.generic import TemplateView
from django.http import HttpResponse, HttpResponseRedirect
from dbview.models import Colleges
# Create your views here.
class itempageView(TemplateView):   
    def get(self, request, **kwargs):
        return render(request, 'itempage.html', context=None)
		
