@echo off
:loop
tasklist | find /i "scrapy.exe"&&echo  [ %time:~,-3% ]���ڽ���scrapy.exe||(echo ����scrapy������)&&(e:)&(cd e:/scrapy/fortest)&&(echo ���뵽Ŀ¼��)&&(scrapy crawl sample)
ping -n 10 127.0>nul
goto :loop