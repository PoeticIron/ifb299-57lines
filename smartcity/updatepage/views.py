from django.shortcuts import render
from django.views.generic import UpdateView
from .forms import UpdateForm
from django.contrib.auth.models import User
from django.http import HttpResponse, HttpResponseRedirect

# Create your views here.
class UpdatePageView(UpdateView):
    template_name = 'updatepage.html'
    form_class = UpdateForm
    success_url = '/mainpage'
    def update_details(request, pk=None):
        form = UpdateForm(request.POST or None)
        if request.method == 'POST':    
            if form.is_valid():
                form.save()
                return redirect('/mainpage')
        return render(request, 'updatepage.html', {'form':form})

def update(request):
	if request.method == 'POST':
		form = UpdateForm(request.POST)
		if form.is_valid():
			user = request.user
			user.first_name = request.POST.get("firstname")
			user.last_name= request.POST.get("lastname")
			user.email = request.POST.get("email")
			user.set_password(request.POST.get("password"))
			user.save()
			return HttpResponseRedirect('/mainpage')
	else:
		form=UpdateForm()
	return render(request, 'updatepage.html', {'form':form})

def delete(request):
    if request.method == 'POST':
        form = UpdateForm(request.POST)
        detail = User.objects.all()
        user_id = int(request.POST.get('user_id'))
        users = User.objects.get(id=user_id)
        users.delete()
        return HttpResponseRedirect('/mainpage')
