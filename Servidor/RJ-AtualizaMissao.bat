REM By RobérioJR

@echo off

set data=%date:/=-%
set hr=%TIME:~0,2%
set mm=%TIME:~3,2%
set NomeMissao=DFAltisLife.Altis.pbo


if NOT exist C:\Users\Administrator\Desktop\AtualizarMissao\*.pbo goto :SemAtualizar
ren "C:\Users\Administrator\Desktop\AtualizarMissao\*.pbo" %NomeMissao% 
ren "C:\a3server\mpmissions\%NomeMissao%" DFAltisLife.Altis_%data%_%hr%%mm%.pbo
move /Y "C:\Users\Administrator\Desktop\AtualizarMissao\%NomeMissao%" "C:\a3server\mpmissions"
REM copy /Y "C:\Users\Administrator\Desktop\AtualizarMissao\%NomeMissao%" "C:\a3server\mpmissions"

exit

 :SemAtualizar
 echo Sem Atualizar
 exit