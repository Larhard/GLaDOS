from django.conf.urls import patterns, url

urlpatterns = patterns('manual_judge_server.views',
                       url(r'^$', 'home', name='home')
                       )