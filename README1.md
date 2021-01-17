Seguimos el curso: https://simpleisbetterthancomplex.com/series/2017/09/04/a-complete-beginners-guide-to-django-part-1.html

1. Instalación: python, django, pip y virtualenv
2. Comenzar con un proyecto en django:

    2.1. To start a new Django project, run the command below:

            django-admin startproject myproject

    2.2. We can test it by executing the command:

            python manage.py runserver

3. Django Apps. In the Django philosophy we have two important concepts:

    app: is a Web application that does something. An app usually is composed of a set of models (database tables), views, templates, tests.

    project: is a collection of configurations and apps. One project can be composed of multiple apps, or a single app.

    3.1. To create our first app, go to the directory where the manage.py file is and executes the following command:

            django-admin startapp boards

    3.2. Configurar la app en el fichero settings.py

4. Hello Worl. Para crear a new page with Django

    4.1. view.py --> here we defined a simple view called home which simply returns a message saying Hello, World!.
    4.2. urls.py --> we have to tell Django when to serve this view. It’s done inside the urls.py

    4.3. Let’s see what happen:

        python manage.py runserver