from django.shortcuts import render
from django.views.generic import TemplateView
from .forms import RegForm
from django.contrib.auth.models import User
from django.http import HttpResponse, HttpResponseRedirect

# Create your views here.
class RegisterPageView(TemplateView):
    def get(self, request, **kwargs):
        if request.method == 'POST':
            form = RegForm(request.POST)
            if form.is_valid():
                user = User.objects.create_user(request.POST.get("username"),request.POST.get("email"),request.POST.get("password"))
                return HttpResponseRedirect('/mainpage')
        else:
            form=RegForm()
        return render(request, 'registerpage.html', {'form':form})

def register(request):
	if request.method == 'POST':
		form = RegForm(request.POST)
		if form.is_valid():
			user = User.objects.create_user(request.POST.get("username"),request.POST.get("email"),request.POST.get("password"))
			return HttpResponseRedirect('/mainpage')
	else:
		form=RegForm()
	return render(request, 'registerpage.html', {'form':form})