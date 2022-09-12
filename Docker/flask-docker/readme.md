 cd /path/to/python-docker
 pip3 install Flask
 pip3 freeze | grep Flask >> requirements.txt
 touch app.py

app.py
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, Docker!'

python3 -m flask run

python-docker
|____ app.py
|____ requirements.txt
|____ Dockerfile

docker build --tag python-docker .
docker images
docker run python-docker
curl localhost:5000

docker run --publish 8000:5000 python-docker
curl localhost:8000

docker run -d -p 8000:5000 python-docker

docker volume create mysql
docker volume create mysql_config

docker network create mysqlnet

docker run --rm -d -v mysql:/var/lib/mysql \
  -v mysql_config:/etc/mysql -p 3306:3306 \
  --network mysqlnet \
  --name mysqldb \
  -e MYSQL_ROOT_PASSWORD=p@ssw0rd1 \
  mysql

docker exec -ti mysqldb mysql -u root -p
 

pip3 install mysql-connector-python
pip3 freeze | grep mysql-connector-python >> requirements.txt

docker build --tag python-docker-dev .

docker run \
  --rm -d \
  --network mysqlnet \
  --name rest-server \
  -p 8000:5000 \
  python-docker-dev

curl http://localhost:8000/initdb
curl http://localhost:8000/widgets