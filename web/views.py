from django.shortcuts import render_to_response
from django.contrib.auth import authenticate, login, logout
from django.contrib.admin.views.decorators import staff_member_required
from django.contrib.auth.decorators import login_required
from django.core.urlresolvers import NoReverseMatch
from django.db import IntegrityError
from django.shortcuts import render, redirect

from core.models import Contest, Judge
from core.models import Program


@login_required
def contest_list(request):
    contests = Contest.objects.all()
    return render(request, 'web/contest_list.html', {
        'contests': contests,
    })


@login_required
def contest_details(request, contest_id):
    contest_info = Contest.objects.get(pk=contest_id)
    return render(request, 'web/contest_details.html', {
        'contest_info': contest_info,
    })

@login_required
def contest_results(request, contest_id):
    programs = Program.objects.filter(contest=contest_id)
    contest = Contest.objects.get(pk=contest_id)
    return render(request, 'web/contest_results.html', {
        'programs': programs,
        'contest': contest,
    })


@staff_member_required
def contest_create(request):
    redirect_url = request.GET.get('next', '/')
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


def login_view(request):
    redirect_url = request.GET.get('next', '/')
    login_message = ""

    if 'login' in request.POST:
        username = request.POST.get('username', '')
        password = request.POST.get('password', '')
        user = authenticate(username=username, password=password)
        if user is not None:
            login(request, user)
            try:
                return redirect(redirect_url)
            except NoReverseMatch:
                return redirect('/')
        else:
            login_message += "Login or Password incorrect"
    return render(request, 'web/login_view.html', {
        'login_message': login_message,
    })


def logout_view(request):
    redirect_url = request.GET.get('next', '/')

    logout(request)

    try:
        return redirect(redirect_url)
    except NoReverseMatch:
        return redirect('/')


@staff_member_required
def contest_edit(request, contest_id):
    contest = Contest.objects.get(id=contest_id)
    judges = Judge.objects.all()
    return render(request, 'web/contest_edit.html', {
        'contest': contest,
        'judges': judges,
    })
