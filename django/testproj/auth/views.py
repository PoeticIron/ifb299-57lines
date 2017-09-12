from django.shortcuts import render
from django.views.generic import TemplateView
from django.template import loader
from django.http import HttpResponse, HttpResponseRedirect
from django.contrib.auth import authenticate
from django.contrib.auth.models import User
from .forms import RegForm


def index(request):
    template = loader.get_template('index.html')
    context = None
    return HttpResponse(template.render(context, request))

def login(request):
	if request.method == 'POST':
		user = authenticate(username=request.POST.get("uname"), password=request.POST.get("psw"))
		if user is not None:
			return HttpResponse("Welcome Back, " + user.username)
		else:
			return HttpResponse("bad login")

def name(request):
	template = loader.get_template('name.html')
	form= RegForm()
	context= None
	return HttpResponse(template.render(context,request))

def register(request):
	if request.method == 'POST':
		form = RegForm(request.POST)
		if form.is_valid():
			user = User.objects.create_user(request.POST.get("username"),request.POST.get("email"),request.POST.get("password"))
			return HttpResponseRedirect('/thanks/')
	else:
		form=RegForm()
	return render(request, 'name.html', {'form':form})

