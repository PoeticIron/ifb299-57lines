from django.shortcuts import render
from django.views.generic import TemplateView
from django.contrib.auth import authenticate,login,logout
from django.http import HttpResponse, HttpResponseRedirect

# Create your views here.
class LoginPageView(TemplateView):
    def get(self, request, **kwargs):
        return render(request, 'loginpage.html', context=None)
def logon(request):
	if request.method == 'POST':
		user = authenticate(request, username=request.POST.get("uname"), password=request.POST.get("psw"))
		if user is not None:
			login(request, user)
			return HttpResponseRedirect('/mainpage')
		else:
			return HttpResponseRedirect('/')
def logoff(request):
	logout(request)
	return HttpResponseRedirect('/mainpage')
	
