from django.conf.urls import patterns, include, url
from django.contrib import admin

import manual_judge_server.urls
import web.urls

urlpatterns = patterns('',
                       url(r'^admin/', include(admin.site.urls)),
                       url(r'^mjs/', include(manual_judge_server.urls, namespace='mjs')),
                       url(r'', include(web.urls, namespace='web')),
                       )
