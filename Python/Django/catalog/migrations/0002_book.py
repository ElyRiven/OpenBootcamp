# Generated by Django 4.1.4 on 2022-12-06 21:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Book',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=32)),
                ('summary', models.TextField(help_text='Pon aquí de que va el libro', max_length=100)),
                ('isbn', models.CharField(help_text='El ISBN de 13 caracteres', max_length=13, verbose_name='ISBN')),
                ('genre', models.ManyToManyField(to='catalog.genre')),
            ],
        ),
    ]
