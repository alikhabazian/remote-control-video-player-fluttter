@echo off
SET x="a"
//@echo on
echo %x%
//@echo off
call "E:\virual env\django_rest\Scripts\activate"
//@echo on
set ip_address_string="IPv4 Address"
rem Uncomment the following line when using older versions of Windows without IPv6 support (by removing "rem")
rem set ip_address_string="IP Address"
echo Network Connection Test
for /f "usebackq tokens=2 delims=:" %%f in (`ipconfig ^| findstr /c:%ip_address_string%`) do SET ali= %%f
@echo off
echo %ali%
python controller/manage.py runserver  %ali%:8000
//echo done
pause