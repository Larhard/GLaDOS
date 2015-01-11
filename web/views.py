from django.db import IntegrityError
from django.shortcuts import render, redirect

from core.models import Contest


def contest_list(request):
    contests = Contest.objects.all()
    return render(request, 'web/contest_list.html', {
        'contests': contests,
    })


def contest_create(request):
    redirect_url = request.GET.get('r', '/')
    error = ""

    if 'create' in request.POST:
        try:
            contest = Contest()
            contest.name = request.POST.get('contest_name', '')
            contest.description = request.POST.get('contest_description', '')
            try:
                contest.players_count = int(request.POST.get('contest_players_count', ''))
            except ValueError:
                error += "players_count has to be integer"
            contest.save()
        except IntegrityError as e:
            error += str(e)
        else:
            return redirect(redirect_url)

    return render(request, 'web/contest_create.html', {
        'error': error
    })
