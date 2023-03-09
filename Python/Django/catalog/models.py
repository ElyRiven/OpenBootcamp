from django.urls import reverse
from django.db import models

class Genre(models.Model):
    name = models.CharField(max_length=64, help_text='Pon el nombre del género')

    def __str__(self):
        return self.name

class Book(models.Model):
    title = models.CharField(max_length=32)
    #author = models.ForeignKey('Author', on_delete=models.SET_NULL, null=True)
    summary = models.TextField(max_length=100, help_text='Pon aquí de que va el libro')
    isbn = models.CharField('ISBN', max_length=13, help_text='El ISBN de 13 caracteres')
    genre = models.ManyToManyField(Genre)

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('book-detail', args=[str(self.id)])