FROM python:3.7.6

RUN pip install --upgrade pip

COPY . /app

WORKDIR /app

RUN apt-get update \ 
	&& pip install -r requirements.txt

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.7.3/wait /wait

RUN chmod +x /wait