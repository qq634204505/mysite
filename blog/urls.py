from django.conf.urls import url
from . import views


# start with blog
urlpatterns = [
    url(r'^$',views.blog_list,name='blog_list'),
    url(r'^(?P<blog_pk>\d*)/$',views.blog_detail, name='blog_detail'),
    url(r'^type/(?P<blog_type_pk>\d+)/',views.blogs_with_type,name="blogs_with_type"),
    url(r'^date/(?P<year>\d+)/(?P<month>\d+)/',views.blogs_with_date,name="blogs_with_date"),
]