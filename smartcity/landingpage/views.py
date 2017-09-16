from django.shortcuts import render
from django.views.generic import TemplateView

# Create your views here.
class LoginPageView(TemplateView):
    def get(self, request, **kwargs):
        return render(request, 'loginpage.html', context=None)
