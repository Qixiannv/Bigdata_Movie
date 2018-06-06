# -*- coding: utf-8 -*
# author 闫相垠
# date 2018/5/31

import requests
import re #正则表达式提取数据
import time
from bs4 import BeautifulSoup
import pymysql.cursors

connection = pymysql.connect(host="127.0.0.1",port=3306,user="root",password="",db="movie_db",charset='utf8',cursorclass=pymysql.cursors.DictCursor)

cursor = connection.cursor()

for i in range(15,20):
    a_url = 'https://kan.2345.com/vip/list/--movie--0---'+str(i)+'.html'
    # print(a_url)
    html_1 = requests.get(a_url)
    html_1.encoding = 'gb2312'
    # print(html_1.status_code) #200
    # print(html_1.text) #网页源码
    detail_list = re.findall('<a class="aPlayBtn" href="(.*?)" target="_blank', html_1.text)# 返回列表
    # print(detail_list)
    for j in detail_list:
        b_url = j
        # print(b_url)
        html_2 = requests.get(b_url)
        html_2.encoding = 'gb2312'
        # print(html_2.text)
        bs = BeautifulSoup(html_2.text,"html.parser")
        bslist = bs.find_all('div',attrs={'class': 'tit'})

        movie_name = ""
        # 电影名
        for k in bslist:
            tdlist = k.find_all('h1')
            movie_name = tdlist[0].string
            # print(movie_name)

        movie_time = 0
        detail_list1 = re.findall('<em>(\d*?)\S\S</em>', html_2.text)
        movie_time = detail_list1[0]
        # print(movie_time)

        movie_pic = ''
        detail_list2 = re.findall('<img alt="\S*" onerror="javascript:this.src=\S*" src="(.*?)">',html_2.text)
        if detail_list2[0] != '':
            movie_pic = detail_list2[0]
        else:
            movie_pic = "//imgwx3.2345.com/dypcimg/img/8/65/sup196226_223x310.jpg"

        # 电影简介
        bslist1 = bs.find_all('span',attrs='sAll')
        for l in bslist1:
             sql = "INSERT INTO movie (movie_name,movie_summary,movie_time,movie_pic)  VALUES (%s,%s,%s,%s)"
             cursor.execute(sql,(movie_name,bslist1[0].string,movie_time,movie_pic))
             connection.commit()






