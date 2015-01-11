from django.shortcuts import render

from core.models import Contest


def home(request):
    contests = Contest.objects.all()
    return render(request, 'manual_judge_server/home.html', {
        'contests': contests,
    })