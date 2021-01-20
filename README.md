# API Yamdb Group Project

This is API for multi-user blogging platform divided by categories, genres with ability to add posts, reviews, comments etc.

## Getting Started

Clone repository from GitHub
```sh
$ git clone https://github.com/vokson/infra_sp2.git
$ cd infra_sp2
```
### Prerequisites

Install docker as described [here](https://docs.docker.com/get-docker/).

### Installing

Create ```.env``` file with environment PostreSQL settings and secret key

```
DB_NAME=
POSTGRES_USER=
POSTGRES_PASSWORD=
DB_HOST=
DB_PORT=
SECRET_KEY=
```

Build and run containers
```
docker-compose up --build -d
```
Migrate and seed sample data
```
docker-compose exec web python manage.py migrate --noinput
docker-compose exec web python manage.py loaddata fixtures.json
```
Create super user
```
docker-compose exec web python manage.py createsuperuser
```
*Site is working on your-ip-address:8000/admin*

## Running the tests
```
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
pytest
```
## Technologies

[Django](https://www.djangoproject.com/)
[Django Rest Framework](https://www.django-rest-framework.org/)
[PostgreSQL](https://www.postgresql.org/)
[Docker](https://www.docker.com/)

## Authors

* **Noskov Alexey** - [vokson](https://github.com/vokson)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
