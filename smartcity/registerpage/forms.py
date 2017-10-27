from django import forms
from django.contrib.auth.models import User
from registerpage.models import Profile

UserTypes = (
    ('1', 'Student'),
    ('2', 'Tourist'),
    ('3', 'Businessperson'),
)

class RegForm(forms.Form):
		model = User
		username = forms.CharField(label='Username', max_length=150)
		firstname = forms.CharField(max_length=100)
		lastname = forms.CharField(max_length=100)
		email = forms.EmailField()
		password = forms.CharField(widget=forms.PasswordInput)
		Confirm_password = forms.CharField(widget=forms.PasswordInput)
		widgets = {
			'password': forms.PasswordInput(),
		}

class TypeForm(forms.ModelForm):
	class Meta:
		model = Profile
		fields = ('userType',)
class UserForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ('username','first_name', 'last_name', 'email')