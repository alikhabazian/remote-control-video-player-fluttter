from django.urls import path
from quickstart import views
# from rest_framework.urlpatterns import format_suffix_patterns
urlpatterns=[
    path("space",views.press_space),
    path("right",views.press_right),
    path("left",views.press_left),
    path("string/<str:pk>",views.press_string),
]
# urlpatterns = format_suffix_patterns(urlpatterns)