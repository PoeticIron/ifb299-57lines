from django import forms
from django.forms import ModelForm
from mainpage.models import Colleges

class CollegeForm(forms.ModelForm):
    college = forms.CharField()

    class Meta:
        model = Colleges
        fields = ('college',)
