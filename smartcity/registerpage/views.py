from django.shortcuts import render
from django.views.generic import TemplateView
from .forms import RegForm, TypeForm
from django.contrib.auth.models import User
from django.http import HttpResponse, HttpResponseRedirect
from .models import Profile

# Create your views here.
class RegisterPageView(TemplateView):
    def get(self, request, **kwargs):
        if request.method == 'POST':
            form = RegForm(request.POST)
            typeForm = TypeForm(request.POST)
            if form.is_valid():
                user = User.objects.create_user(request.POST.get("username"),request.POST.get("email"),request.POST.get("password"))
                return HttpResponseRedirect('/mainpage')
        else:
            form=RegForm()
            typeForm = TypeForm()
        return render(request, 'registerpage.html', {'form':form, 'typeForm': typeForm})

def register(request):
	errors = ""
	typeForm = TypeForm()
	if request.method == 'POST':
		form = RegForm(request.POST)
		if form.is_valid():
			try:
				fields = request.POST
				user = User.objects.create_user(fields.get("username"),request.POST.get("email"),request.POST.get("password"))
				typeForm = TypeForm(request.POST, instance=user.profile)
				typeForm.save()
				return HttpResponseRedirect('/mainpage')
			except Exception as e:
				pass
				form = RegForm(request.POST)
				typeForm = TypeForm(request.POST)
				errors = e
	else:
		form=RegForm()
		typeForm = TypeForm()
	return render(request, 'registerpage.html', {'form':form, 'typeForm': typeForm, 'errors' : errors})