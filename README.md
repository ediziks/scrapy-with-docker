# hb-product-app
## hepsiburada product crawler

Tested Only On Linux And Windows.

> file tree:
- |   .gitattributes
- |   .gitignore
- |   docker-compose.yml
- |   Dockerfile
- |   LICENSE
- |   README.md
- |   requirements.txt
- |   scrapy.cfg
- |   sql-script.sql
- |   .env
- \---hepsiburadaProject
- ---|   items.py
- ---|   middlewares.py
- ---|   pipelines.py
- ---|   settings.py
- ---|   settings.pyc
- ---|   __init__.py
- ---|   __init__.pyc
- ---|+---spiders
- ---|--|   products.py
- ---|--|   products.pyc
- ---|--|   __init__.py
- ---|--|   __init__.pyc
- ---|--|
- ---|--\---__pycache__
- ---|           products.cpython-37.pyc
- ---|           __init__.cpython-37.pyc
- ---|--\---__pycache__
- ---|       settings.cpython-37.pyc
- ---|       __init__.cpython-37.pyc


>To Run:

in cmd
`Drive:\> cd ~repository location~ 
`
or pull from https://github.com/eemektas/hb-product-app.git


>Needed:

- Docker/docker-compose	
	Installation;
	Download Docker.
	Double-click InstallDocker.msi to run the installer.
	Follow the Install Wizard: accept the license, authorize the installer, and proceed with the install.
	Click Finish to launch Docker.
	Docker starts automatically.
	Docker loads a “Welcome” window giving you tips and access to the Docker documentation.
	That's it!



>After Then:

go: 
> file tree:
- |   .gitattributes
- |   .gitignore
- |   *docker-compose.yml*

in the docker-compose.yml file, add your product urls `start_urls="~your url1~,~your url2~"` alike and then save the file.


>Then:

run the docker-compose command below in cmd/terminal;

`Drive:\...\hb-product-app> docker-compose up --build`


>Meanwhile in another cmd/terminal;


    
    `C:\Users\Casper>docker exec -it mysql bash`
    `root@49ac36002c20:/# mysql -ususer -ppsswd`
    mysql: [Warning] Using a password on the command line interface can be insecure.
    Welcome to the MySQL monitor.  Commands end with ; or \g.
    Your MySQL connection id is 3
    Server version: 5.7.29 MySQL Community Server (GPL)
    
    Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.
    
    Oracle is a registered trademark of Oracle Corporation and/or its
    affiliates. Other names may be trademarks of their respective
    owners.
    
    Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
    
    `mysql> SHOW DATABASES;`
    +----------------------+
    | Database             |
    +----------------------+
    | information_schema   |
    | products_db          |
    +----------------------+
    2 rows in set (0.00 sec)
    
    `mysql> USE products_db;`
    Reading table information for completion of table and column names
    You can turn off this feature to get a quicker startup with -A
    
    Database changed
    `mysql> SELECT * FROM products_table;`
    +------------+-------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+---------------+
    | product_id | product_name                                                                                                | product_image                                                     | product_price |
    +------------+-------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+---------------+
    |          1 | Omo Active 10 kg Matik Toz Çamaşır Deterjanı                                                                | https://productimages.hepsiburada.net/s/33/500/10421806006322.jpg | 53.29 TRY     |
    |          2 | Kefo Kozalak Nargile Takımı                                                                                 | https://productimages.hepsiburada.net/s/26/500/10149223202866.jpg | 185.00 TRY    |
    |          3 | Lenovo ThinkPad X1 C7 Intel Core i7 8565U 16GB 1TB SSD Windows 10 Pro 14" Taşınabilir Bilgisayar 20QDS23L00 | https://productimages.hepsiburada.net/s/34/500/10455905665074.jpg | 17399.00 TRY  |
    +------------+-------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+---------------+
    3 rows in set (0.00 sec)
	




That's all!
