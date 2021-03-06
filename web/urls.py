from django.conf.urls import patterns, url
from django.views.generic import RedirectView
from django.core.urlresolvers import reverse_lazy

urlpatterns = patterns('web.views',
                       url(r'^$', RedirectView.as_view(url=reverse_lazy('web:contest_list')), name='home'),  # TODO make it generic
                       url(r'^contest/$', 'contest_list', name='contest_list'),
                       url(r'^contest/create/$', 'contest_create', name='contest_create'),
                       url(r'^contest/(?P<contest_id>\d+)/$', 'contest_details', name='contest_details'),
                       url(r'^contest/(?P<contest_id>\d+)/results$', 'contest_results', name='contest_results'),
                       url(r'^contest/(?P<contest_id>\d+)/edit$', 'contest_edit', name='contest_edit'),
                       url(r'^contest/(?P<contest_id>\d+)/match/$', 'match_list', name='match_list'),
                       url(r'^contest/(?P<contest_id>\d+)/match/(?P<match_id>\d+)/$', 'match_details', name='match_details'),
                       url(r'^judge/$', 'judge_list', name='judge_list'),
                       url(r'^judge/create/$', 'judge_create', name='judge_create'),
                       url(r'^judge/(?P<judge_id>\d+)/$', 'judge_details', name='judge_details'),
                       url(r'^judge/(?P<judge_id>\d+)/edit$', 'judge_edit', name='judge_edit'),
                       url(r'^program/$', 'program_list', name='program_list'),
                       url(r'^program/(?P<program_id>\d+)/$', 'program_details', name='program_details'),
                       url(r'^user/$', 'user_list', name='user_list'),
                       url(r'^user/(?P<user_id>\d+)/$', 'user_details', name='user_details'),
                       url(r'^login/$', 'login_view', name='login'),
                       url(r'^logout/$', 'logout_view', name='logout'),
                       )
