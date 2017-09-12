from django import forms

from .models import Post

class PostForm(forms.ModelForm):

    class Meta:
        model = Post
        username = forms.CharField(label='User Name', max_length=100)

