
docker-compose build
docker image rm $(docker images -q)
docker build -t my-django-app:latest .

docker-compose up
docker-compose up -d
docker-compose run --rm app sh -c "flake8"
docker-compose run --rm app sh -c "python manage.py test"

docker-compose run --rm app sh -c "django-admin startapp core"
docker-compose run --rm app sh -c "python manage.py wait_for_db"
docker-compose run --rm app sh -c "django-admin startproject app ."
docker-compose run --rm app sh -c "python manage.py makemigrations"
docker-compose run --rm app sh -c "python manage.py runserver 0.0.0.0:8005"
docker-compose run --rm app sh -c "python manage.py wait_for_db && python manage.py migrate"


