@echo off
:loop
tasklist | find /i "scrapy.exe"&&echo  [ %time:~,-3% ]���ڽ���scrapy.exe||(echo ����scrapy������)&&(e:)&(cd E:\scrapy\Missing)&&(echo ���뵽Ŀ¼��)&&(scrapy crawl missing)
ping -n 30 127.0>nul
goto :loop