#FROM mysql:5.7

#ENV MYSQL_ROOT_PASSWORD=psswd \
#	MYSQL_DATABASE=products_db \
#	MYSQL_USER=root \
#	MYSQL_PASSWORD=psswd

#COPY ./sql-scripts/ /docker-entrypoint-initdb.d/


FROM python:3.7.6

RUN pip install --upgrade pip

COPY . /app

WORKDIR /app

RUN apt-get update \ 
	&& pip install -r requirements.txt

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.7.3/wait /wait
RUN chmod +x /wait

#CMD /wait && scrapy crawl products -a start_urls="https://www.hepsiburada.com/omo-active-10-kg-matik-toz-camasir-deterjani-p-HBV00000PKVL8,https://www.hepsiburada.com/kefo-kozalak-nargile-takimi-p-HBV00000J2R84,https://www.hepsiburada.com/lenovo-thinkpad-x1-c7-intel-core-i7-8565u-16gb-1tb-ssd-windows-10-pro-14-tasinabilir-bilgisayar-20qds23l00-p-HBV00000Q3E0X" -o pro.csv