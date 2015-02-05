from django.shortcuts import render_to_response
from django.contrib.auth import authenticate, login, logout, get_user_model
from django.contrib.admin.views.decorators import staff_member_required
from django.contrib.auth.decorators import login_required
from django.core.urlresolvers import NoReverseMatch
from django.db import IntegrityError
from django.shortcuts import render, redirect

from django.core.exceptions import ValidationError

from core.models import Contest, Judge, Match
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
        contest = Contest()
        contest.name = request.POST.get('contest_name', '')
        contest.description = request.POST.get('contest_description', '')
        contest.players_count = int(request.POST.get('contest_players_count', ''))
        try:
            contest.save()
        except ValidationError as e:
            error += str(e) + "\n"
        except IntegrityError as e:
            error += str(e) + "\n"

        if error == "":
            return redirect(redirect_url)

    return render(request, 'web/contest_create.html', {
        'error': error
    })

@login_required
def judge_list(request):
    judges = Judge.objects.all()
    return render(request, 'web/judge_list.html', {
        'judges': judges,
    })

@login_required
def judge_details(request, judge_id):
    judge_info = Judge.objects.get(pk=judge_id)
    return render(request, 'web/judge_details.html', {
        'judge_info': judge_info,
    })

@staff_member_required
def judge_create(request):
    redirect_url = request.GET.get('next', '/')
    error = ""

    if 'create' in request.POST:
        judge = Judge()
        judge.name = request.POST.get('judge_name', '')
        judge.description = request.POST.get('judge_description', '')
        judge.path = request.POST.get('judge_path', '')
        judge.init_parameters = request.POST.get('judge_init_parameters', '')
        try:
            judge.save()
        except ValidationError as e:
            error += str(e) + "\n"
        except IntegrityError as e:
            error += str(e) + "\n"

        if error == "":
            return redirect(redirect_url)

    return render(request, 'web/judge_create.html', {
        'error': error
    })

@staff_member_required
def contest_edit(request, contest_id):
    redirect_url = request.GET.get('next', '/')
    error = ""

    if 'save' in request.POST:
        contest = Contest.objects.get(id=contest_id)
        contest.name = request.POST['name']
        contest.description = request.POST['description']
        contest.players_count = int(request.POST['players_count'])
        contest.default_judge_id = None if request.POST['default_judge'] == 'None' \
            else int(request.POST['default_judge'])
        try:
            contest.save()
        except ValidationError as e:
            error += str(e) + "\n"
        except IntegrityError as e:
            error += str(e) + "\n"

        if error == "":
            return redirect(redirect_url)

    contest = Contest.objects.get(id=contest_id)
    judges = Judge.objects.all()
    return render(request, 'web/contest_edit.html', {
        'error': error,
        'contest': contest,
        'judges': judges,
    })

@staff_member_required
def judge_edit(request, judge_id):
    redirect_url = request.GET.get('next', '/')
    error = ""

    if 'save' in request.POST:
        judge = Judge.objects.get(id=judge_id)
        judge.name = request.POST['name']
        judge.description = request.POST['description']
        judge.init_parameters = request.POST['init_parameters']
        judge.path = request.POST['path']
        try:
            judge.save()
        except ValidationError as e:
            error += str(e) + "\n"
        except IntegrityError as e:
            error += str(e) + "\n"

        if error == "":
            return redirect(redirect_url)

    judge = Judge.objects.get(id=judge_id)
    return render(request, 'web/judge_edit.html', {
        'error': error,
        'judge': judge,
    })

@login_required
def match_list(request, contest_id):
    contest = Contest.objects.get(id=contest_id)
    matches = contest.match_set
    if not request.user.is_staff:
        matches = contest.match_set.filter(programmatch__program__user=request.user)
    matches = matches.order_by('-start')
    return render(request, 'web/match_list.html', {
        'contest': contest,
        'matches': matches,
    })

@login_required
def match_details(request, contest_id, match_id):
    contest = Contest.objects.get(id=contest_id)
    match = contest.match_set.get(id=match_id)
    logs = None
    error = None

    if not request.user.is_staff and request.user not in match.get_user_set():
        error = "This is not your match"
    else:
        logs = match.matchlog_set.order_by('time')

    return render(request, 'web/match_details.html', {
        'error': error,
        'contest': contest,
        'match': match,
        'logs': logs,
    })

@login_required
def user_list(request):
    user_model = get_user_model()
    users = user_model.objects.all().values('username', 'id').order_by('id')
    return render(request, 'web/user_list.html', {
        'users': users,
    })

@login_required
def user_details(request, user_id):
    user_model = get_user_model()
    user_info = {}
    user_info['username'] = user_model.objects.get(pk=user_id).username
    return render(request, 'web/user_details.html', {
        'user_info': user_info,
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


