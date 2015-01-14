from django.conf.urls import patterns, url
from django.views.generic import RedirectView
from django.core.urlresolvers import reverse_lazy

urlpatterns = patterns('web.views',
                       url(r'^$', RedirectView.as_view(url=reverse_lazy('web:contest_list'))),  # TODO make it generic
                       url(r'^contest/$', 'contest_list', name='contest_list'),
                       url(r'^contest/create/$', 'contest_create', name='contest_create'),
                       url(r'^login/$', 'login', name='login'),
                       )
