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
Site is working on your-ip-adress:8000/admin

## Running the tests
```
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
pytest
```
## Authors

* **Noskov Alexey** - *Initial work* - [PurpleBooth](https://github.com/vokson)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
