FROM python:3.11

# Установите рабочий каталог
WORKDIR /app

# Копируйте файлы проекта в контейнер
COPY requirements.txt /app/
COPY . /app/

# Установите зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Сделайте скрипт запуска исполняемым
RUN chmod +x /app/entrypoint.sh

# Укажите команду для запуска скрипта
ENTRYPOINT ["/app/entrypoint.sh"]