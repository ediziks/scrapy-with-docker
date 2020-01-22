#FROM mysql:5.7

#ENV MYSQL_ROOT_PASSWORD=psswd \
#	MYSQL_DATABASE=products_db \
#	MYSQL_USER=root \
#	MYSQL_PASSWORD=psswd

#COPY ./sql-scripts/ /docker-entrypoint-initdb.d/


FROM python:3.9.0a2

RUN pip install --upgrade pip

COPY . /app

WORKDIR /app

RUN apt-get update \ 
	&& pip install -r requirements.txt
	
