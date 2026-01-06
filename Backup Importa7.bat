echo off
cls

echo********************************************************************  E R P   I M P O R T A  ********************************************************************
echo *
echo **
echo ***
echo ****
echo ***** Copiando os arquivo para o servidor [SERVER-CYBER].
echo ****
echo ***
echo **
echo *

set filedatetime=%date% 
set filedatetime=\\server-cyber\Backup_Sistemas\Sistemas\Faturamento - %filedatetime:~6,4%%filedatetime:~3,2%%filedatetime:~0,2%
MKDIR "%filedatetime%"
xcopy C:\Sistemas\Faturamento\Codigo_Fonte\*.* "%filedatetime%"  /s /e /h /y

cls
echo *
echo **
echo ***
echo ****
echo ***** Copiando os arquivo para o hd externo [HD-EXTERNO].
echo ****
echo *** 
echo **
echo *

set filedatetime=%date% 
set filedatetime=D:\Backup_Sistemas\Sistemas\Faturamento - %filedatetime:~6,4%%filedatetime:~3,2%%filedatetime:~0,2%
MKDIR "%filedatetime%"
xcopy C:\Sistemas\Faturamento\Codigo_Fonte\*.* "%filedatetime%"  /s /e /h /y
      
cls
echo *
echo **
echo ***
echo ****
echo ***** Copiando os arquivo para o hd externo [HD-EXTERNO II].
echo ****
echo ***
echo **
echo *

set filedatetime=%date% 
set filedatetime=f:\Backup_Sistemas\Sistemas\Faturamento - %filedatetime:~6,4%%filedatetime:~3,2%%filedatetime:~0,2%
MKDIR "%filedatetime%"
xcopy C:\Sistemas\Faturamento\Codigo_Fonte\*.* "%filedatetime%"  /s /e /h /y

cls
echo *
echo **
echo ***
echo ****
echo ***** Copiando os arquivo para o hd externo [HD-EXTERNO II].
echo ****
echo ***
echo **
echo *

set filedatetime=%date% 
set filedatetime=G:\Backup_Sistemas\Sistemas\Faturamento - %filedatetime:~6,4%%filedatetime:~3,2%%filedatetime:~0,2%
MKDIR "%filedatetime%"
xcopy C:\Sistemas\Faturamento\Codigo_Fonte\*.* "%filedatetime%"  /s /e /h /y

cls
echo *
echo **
echo ***
echo ****
echo ***** Copiando os arquivo para o hd externo [HD-EXTERNO II].
echo ****
echo ***
echo **
echo *

set filedatetime=%date% 
set filedatetime=H:\Backup_Sistemas\Sistemas\Faturamento - %filedatetime:~6,4%%filedatetime:~3,2%%filedatetime:~0,2%
MKDIR "%filedatetime%"
xcopy C:\Sistemas\Faturamento\Codigo_Fonte\*.* "%filedatetime%"  /s /e /h /y

cls
echo *
echo **
echo ***
echo ****
echo ***** Copiando os arquivo para o note [NOTE-DED].
echo ****
echo ***
echo **
echo *

set filedatetime=%date% 
set filedatetime=\\note-ded\Sistemas\Faturamento - %filedatetime:~6,4%%filedatetime:~3,2%%filedatetime:~0,2%
MKDIR "%filedatetime%"
xcopy C:\Sistemas\Faturamento\Codigo_Fonte\*.* "%filedatetime%"  /s /e /h /y
