#!/bin/sh

# Выполните миграции
python manage.py migrate

# Соберите статику
python manage.py collectstatic --noinput

# Запустите сервер Django (или Daphne, если используете его)
daphne -b 0.0.0.0 -p 8000 config.asgi:application