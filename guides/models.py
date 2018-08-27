from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User

class Guide(models.Model):
    STATUS_CHOICES = (
        ('private', 'Private'),
        ('public', 'Public'),
    )
    title = models.CharField(max_length=150)
    author = models.ForeignKey(User, on_delete=models.CASCADE, related_name="guides")
    body = models.TextField()
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    status = models.CharField(max_length=10, choices=STATUS_CHOICES, default='public')
    class Meta:
        ordering = '-publish'
    def __str__():
        return self.title

class Course(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    # will probably add fields regarding popularity of the course (to filter out stupidly created courses)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    created_by = models.ForeignKey(User, on_delete=SET_NULL, related_name="courses_created")

class Teacher(models.Model):
    name = models.CharField(max_length=150)
    # also add fields for popularity (clicks, upvotes, etc)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    created_by = models.ForeignKey(User, on_delete=SET_NULL, related_name="courses_created")

class School(models.Model):
    name = models.CharField(max_length=150)
    # DON'T FORGET TO ADD MORE FIELDS!
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    created_by = models.ForeignKey(User, on_delete=SET_NULL, related_name="courses_created")
    
