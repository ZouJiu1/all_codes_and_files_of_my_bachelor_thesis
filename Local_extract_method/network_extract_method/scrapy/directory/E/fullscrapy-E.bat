@echo off
set processname=scrapy.exe
set num=0
for /f "delims=" %%a in ('tasklist ^| find /i "%processname%"') do (
    if /i not "%%a" == "" (
        set /a num+=1
    )
)
echo �������� %num%
if %num% leq 6 (
(echo ����scrapy������)&&(e:)&(cd e:/fortest)&&(echo ���뵽Ŀ¼��)&&(scrapy crawl sample)
)
pause
