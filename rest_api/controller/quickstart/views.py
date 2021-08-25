# from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
import time
import keyboard

@api_view()
def press_space(request):
    keyboard.press_and_release('space')
    return Response({
        "message": "done"

    },status=status.HTTP_200_OK)
    
@api_view()
def press_right(request):
    keyboard.press_and_release('right')
    return Response({
        "message": "done"

    },status=status.HTTP_200_OK)
    
@api_view()
def press_left(request):
    keyboard.press_and_release('left')
    return Response({
        "message": "done"

    },status=status.HTTP_200_OK)    

@api_view()
def press_string(request,pk):

    print(pk)
    keyboard.press_and_release(str(pk))
    return Response({
        "message": "done"

    },status=status.HTTP_200_OK)
    
    



# Create your views here.
