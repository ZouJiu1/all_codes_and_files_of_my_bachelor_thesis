@echo off
:loop
set name=scrapy.exe
set num=0
for /f "delims=" %%a in ('tasklist ^| find /i "%name%"') do (
    if /i not "%%a" == "" (
        set /a num+=1
    )
)
echo �������� %num%
if %num% leq 1 (
(echo ����scrapy������)&&(e:)&(cd e:/scrapy/fortest400000)&&(echo ���뵽Ŀ¼��)&&(scrapy crawl sample400000)
)
ping -n 30 127.0>nul
goto :loop