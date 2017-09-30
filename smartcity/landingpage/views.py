from django.shortcuts import render
from django.views.generic import TemplateView
from django.contrib.auth import authenticate
from django.http import HttpResponse, HttpResponseRedirect

# Create your views here.
class LoginPageView(TemplateView):
    def get(self, request, **kwargs):
        return render(request, 'loginpage.html', context=None)
def login(request):
	if request.method == 'POST':
		user = authenticate(username=request.POST.get("uname"), password=request.POST.get("psw"))
		if user is not None:
			return HttpResponseRedirect('/mainpage')
		else:
			return HttpResponseRedirect('/')