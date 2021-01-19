FROM python:3.8.5-alpine
RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev
RUN mkdir /code
COPY requirements.txt /code
RUN pip install -r /code/requirements.txt
COPY . /code
WORKDIR /code
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
