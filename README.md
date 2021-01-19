# API Yamdb Group Project

This is repository for group project in Yandex Praktikum

### Installation

Clone repository from GitHub
```sh
$ git clone https://github.com/vokson/api_yamdb.git
$ cd api_yamdb
```

Create virtual environment
```sh
$ python -m venv venv
$ source venv/Scripts/activate
```

Install vendor modules
```sh
$ pip install -r requirements.txt
```

Perfom migrations of database
```sh
$ python manage.py migrate
```

Seed database with test data
```sh
$ python manage.py datatosqlite
```

### How to remove
In order to stop adn remove containers run
```sh
docker-compose down -v
```

# API Yamdb Group Project

This is repository for group project in Yandex Praktikum

## Getting Started

Clone repository from GitHub
```sh
$ git clone https://github.com/vokson/infra_sp2.git
$ cd infra_sp2
```
### Prerequisites

Create .env file with environment PostreSQL settings and secret key

```
DB_NAME=
POSTGRES_USER=
POSTGRES_PASSWORD=
DB_HOST=
DB_PORT=
SECRET_KEY=
```

### Installing

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
## Running the tests

```
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
pytest
```
Site is working on your-ip-adress:8000/admin

## Authors

* **Noskov Alexey** - *Initial work* - [PurpleBooth](https://github.com/vokson)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
