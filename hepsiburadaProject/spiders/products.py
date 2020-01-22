# -*- coding: utf-8 -*-
import os
import csv
import glob
import mysql.connector
import scrapy


class ProductsSpider(scrapy.Spider):
    name = 'products'
    allowed_domains = ['hepsiburada.com']
    # start_urls = ['https://www.hepsiburada.com/ariel-8-kg-toz-camasir-deterjani-dag-esintisi-beyazlar-icin-p-HBV00000EHWO8']

    def __init__(self, *args, **kwargs):
        super(ProductsSpider, self).__init__(*args, **kwargs)
        self.start_urls = kwargs.get('start_urls').split(',')

    def parse(self, response):
        product_name = response.xpath('//header[@class="title-wrapper"]/h1/text()').extract_first()
        product_name = product_name.strip()
        product_image = response.xpath('//img[contains(@class, "product-image")]/@src').extract_first()
        product_price = response.xpath('//span[contains(@itemprop, "price")]/@content').extract()
        product_price = " ".join(product_price)

        yield {
            'product_name': product_name,
            'product_image': product_image,
            'product_price': product_price
        }

    def close(self, reason):
        csv_file = max(glob.iglob('*.csv'), key=os.path.getctime)
        mydb = mysql.connector.connect(host='mysql',
                                       user='root',
                                       passwd='psswd',
                                       db='products_db')
        cursor = mydb.cursor()

        csv_data = csv.reader(open(csv_file))

        row_count = 0
        for row in csv_data:
            if row_count != 0:
                cursor.execute('INSERT IGNORE INTO products_table(product_name, product_image, product_price) VALUES(%s, %s, %s)', row)
            row_count += 1

        mydb.commit()
        cursor.close()
