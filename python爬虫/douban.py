# -*- coding: utf-8 -*
#author 闫相垠
#date 2018/5/31

import pymysql
import requests
import re #正则表达式提取数据
import time
from bs4 import BeautifulSoup

connection = pymysql.connect(host = "127.0.0.1",port = 3306,user = "root",password = "",db = "movie_db",charset='utf8',cursorclass = pymysql.cursors.DictCursor)
cursor = connection.cursor()

a_url = 'http://dianying.2345.com/mingxing/daquan/'
a_html = requests.get(a_url)
a_html.encoding = 'gb2312'
a_detail_list = re.findall('<a href="//dianying.2345.com/list/---(.*?)---.html" target="_blank">',a_html.text)
# print(a_detail_lilst)
for i in a_detail_list:
    b_url = 'http://dianying.2345.com/list/---'+str(i)+'---.html'
    b_html = requests.get(b_url)
    b_html.encoding = 'gb2312'
    b_detail_list = re.findall('<a href="//dianying.2345.com/mingxing/(.*?)/"\s*target="_blank"',b_html.text)
    if b_detail_list :
        c_url = 'http://dianying.2345.com/mingxing/'+str(b_detail_list[0])+'/'
        c_html = requests.get(c_url)
        c_html.encoding = 'gb2312'

        # print(c_url)
        bs = BeautifulSoup(c_html.text,'html.parser')
        bs_name_list = bs.find_all('h1')
        actor_name = ''
        for j in bs_name_list:
            actor_name = j.find('a').string
            # print(actor_name)

        actor_pic = ''
        c_detail_list_pic = re.findall('<img alt="\S*" src="(.*?)"',c_html.text)
        for k in c_detail_list_pic:
            actor_pic = k
            # print(actor_pic)

        actor_summary = ''
        d_url = 'http://dianying.2345.com/mingxing/'+str(b_detail_list[0])+'-1/'
        d_html = requests.get(d_url)
        d_html.encoding = 'gb2312'
        d_detail_list_sumamry = re.findall('<div class="txtList">\n\s*(.*?)\n\s*</div>',d_html.text)
        if d_detail_list_sumamry:
            actor_summary = d_detail_list_sumamry[0]
        else:
            actor_summary = '此演员资料尚不完整'
        # print(actor_summary)

        sql = 'INSERT INTO actor (actor_name,actor_pic,actor_summary) VALUES (%s,%s,%s)'
        cursor.execute(sql,(actor_name,actor_pic,actor_summary))
        connection.commit()