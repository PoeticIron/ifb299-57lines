from django.shortcuts import render
from django.views.generic import TemplateView
from django.template import loader
from django.http import HttpResponse
from django.contrib.auth import authenticate
def index(request):
    template = loader.get_template('name.html')
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
	context= None
	return HttpResponse(template.render(context,request))

def register(request):
	if request.method == 'POST':
		form = PostForm(request.POST)
		if form.is_valid():
			return HttpResponseRedirect('/thanks/')
		else:
			form=NameForm()
		return render(request, 'name.html', {'form':form})
