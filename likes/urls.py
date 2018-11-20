from django.conf.urls import url
from . import views


# start with blog
urlpatterns = [
    url(r'like_change/',views.like_change,name='like_change')
]