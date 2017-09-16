from django.http import HttpResponse
from django.template import loader


def index(request):
    return HttpResponse("Hello, world. You're at the polls index.")
def data(request):
    template = loader.get_template('display.html')
    context = None
    return HttpResponse(template.render(context, request))