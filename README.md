
# Dockerized Django with poetry

This repository is a template for a Docker dev container project which gives you a basic setup of django framework with poetry installed for dependency management


## Installation

to use this repository the following is needed:
- Docker Desktop client
- Visual Studio Code IDE with the Dev Container (from Microsoft) extension
- OPTIONAL: a git/github extension for VSCode for easy source management since once you're operating inside the Docker container you can only interact with it through VSCode

Then you can proceed to clone this repository to your desired folder
## Deployment

To deploy this project:

0. Edit the .env file to your liking
1. Start up your Docker Desktop program
2. Navigate to the project directory with VSCode
3. In VSCode look for the '><' icon symbol on bottom left of the screen, click it and choose 'Reopen in container'
4. Wait for the process to finish and you should have an up and running VSCode window connected to the container
5. REMEMBER that any changes made inside the VSCode window once connected to the cotainer stays inside the container and does not reflect on your local machine so be sure to commit those changes to your remote repository
6. Open up a terminal inside VSCode and run these commands to setup your database and superuser
```bash
    python manage.py makemigrations --noinput
    python manage.py migrate --noinput
    python manage.py showmigrations
    python manage.py check
    python manage.py createsuperuser --noinput
    python mange.py runserver
```
7. You can check that everything is up and running by opening up a terminal inside VSCode and run
```bash
    python mange.py runserver
```
and go in to the specified URL
```bash
http://localhost:8000/
```
to see if you can get to the django homepage and also try to access the django admin page via the URL
```bash
http://localhost:8000/admin/
```
using the username and password specified in the .env file

## Finishing Development

1. Once you're done coding and committed changes to your remote repository you can click the same ><' icon symbol on bottom left of the screen which should now say '>< Dev Container', click it and choose 'Close remote connection'

2. Open up the Docker desktop and stop the running container if needed.

## Continuing Development

To continue your Development
1. Start up your Docker Desktop program
2. Inside the Docker Desktop program on the Container tab there should be a container named 'dockerized django poetry' press the play button to run it
3. Start up your VSCode and click the 'Remote Explorer' option on the left sidebar (a monitor image icon)
4. Under Dev Containers there should be an entry called 'dockerized-django-poetry', click the 'open in container in current window' option (arrow icon)
5. You should now have the same remote connected VSCode window you've left off
## FAQ

#### Tbe added

To be added
