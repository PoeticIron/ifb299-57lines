from django import forms


class RegForm(forms.Form):
		username = forms.CharField(label='Username', max_length=150)
		firstname = forms.CharField(max_length=100)
		lastname = forms.CharField(max_length=100)
		email = forms.EmailField()
		password = forms.CharField(widget=forms.PasswordInput)
		widgets = {
			'password': forms.PasswordInput(),
		}
			