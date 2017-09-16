from django.shortcuts import render
from django.views.generic import TemplateView

# Create your views here.
class RegisterPageView(TemplateView):
    def get(self, request, **kwargs):
        return render(request, 'registerpage.html', context=None)

