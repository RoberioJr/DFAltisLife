@echo off
CD "C:\xampp\mysql\bin"

  
:LOOP
set data=%date:/=-%
set hr=%TIME:~0,2%
set mm=%TIME:~3,2%
set ss=%TIME:~6,2%
COLOR 9
ECHO.
ECHO O AUTO BACKUP DO BANCO DE DADOS ESTA ATIVO TEU PAU NO CU
PING -n 1200 127.0.0.1 >NUL
cls
ECHO.
mysqldump -u root -p arma3 -- altislife > "C:\Users\Administrator\Desktop\BKPBD\BACKUPDB_%data%_%hr%%mm%.sql"
ECHO ULTIMO BACKUP GERADO %hr%:%mm%:%ss%
GOTO :LOOP
