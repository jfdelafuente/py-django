https://simpleisbetterthancomplex.com/series/2017/09/11/a-complete-beginners-guide-to-django-part-2.html

1. Web Board Project
    1.1 Use Case Diagram --> creamos el diagrama de uso de la funcionalidad que queremos implementar
    1.2 Class Diagram --> creamos las entidades y relaciones del proyecto. Se crean los siguientes modelos: BOARD, TOPIC, POST y USER.
    1.3 Dibujar las pantallas que queremos construir.

2. Modelos. Los modelos son basicamente una representación de la bbdd de la disposición de la aplicación que queremos construir.
    2.1 boards/models.py --> como representamos nuestro diagrama de clases.
    2.2 Migrating the Models. Crear la bbdd:

        python manage.py makemigrations

    At this point, Django created a file named 0001_initial.py inside the boards/migrations directory. It represents the current state of our application’s models. In the next step, Django will use this file to create the tables and columns.

    Mientras, puedes ver las instrucciones SQL que se ejecutarán en la bd:

        python manage.py sqlmigrate boards 0001

    2.3 The next step now is to apply the migration we generated to the database:

        python manage.py migrate

3. Views, Templates, and Static Files

    3.1 boards/views.py --> The first thing to do is import the Board model and list all the existing boards.
    3.2 Django Template Engine. We are not going very far rendering HTML like this. For this simple view, all we need is a list of boards; then the rendering part is a job for the Django Template Engine.

        3.2.1 Create a new folder named templates alongside with the boards and mysite folders.
        3.2.2 Now within the templates folder, create an HTML file named home.html
        3.2.3 Open the settings.py inside the myproject directory and search for the TEMPLATES variable and set the DIRS key to os.path.join(BASE_DIR, 'templates')

    3.3 Testing Home Page

        3.3.1 test.py --> We are testing the status code of the response. The status code 200 means success.
        3.3.2 To execute the Django’s test suite:

            python manage.py test

    3.4 Static Files Setup. Static files are the CSS, JavaScripts, Fonts, Images, or any other resources we may use to compose the user interface.

        3.4.1 In the project root directory create a new folder named static, and within the static folder create another one named css.
        3.4.2 Instalar bootstrap-4.0.0 file you downloaded from the Bootstrap website, copy the file css/bootstrap.min.css to our project’s css folder
        3.4.3 Open the settings.py, scroll to the bottom of the file and just after the STATIC_URL
        3.4.4 Ahora se pueden utilizar las classes bootstrap en los fichero html.

4. Introduction to Django Admin

    4.1 Let’s start by creating an administrator account:

        python manage.py createsuperuser

    4.2 Now open the URL in a web browser: http://127.0.0.1:8000/admin/

5. Conclusions

    We defined some requirements for our project, created the first models, migrated the database, started playing with the Models API. We created our very first view and wrote some unit tests. We also configured the Django Template Engine, Static Files, and added the Bootstrap 4 library to the project. Finally, we had a very brief introduction the Django Admin interface.