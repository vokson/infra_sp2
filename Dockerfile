FROM python:3.8.5-alpine
RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev
RUN mkdir /code
WORKDIR /code
COPY . .
RUN pip install -r /code/requirements.txt
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000