
# admin@example.com / root

docker ps -a; docker images -a
docker image rm $(docker images -qa)
docker container rm $(docker container ls -qa)
clear; docker-compose -f docker-compose-brand.yml up -d
clear; docker-compose -f docker-compose-brand.yml run single_service_name

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
docker-compose run --rm app sh -c "python manage.py createsuperuser"
docker-compose run --rm app sh -c "python manage.py runserver 0.0.0.0:8005"
docker-compose run --rm app sh -c "python manage.py wait_for_db && python manage.py migrate"


# clear && docker-compose run --rm -u root app sh -c "pip list | grep tests"
# docker exec -it --user=root <CID> sh
# docker exec -it 01ad4a6ff6ea sh -c "printenv"
# while true; do python3 app.py; sleep 60; done
# clear && docker-compose run --rm -u root app sh -c "pip list | grep tests"

