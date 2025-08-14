Title BestPerformance
@echo off
color 5
echo =============================
echo  Desenvolvido por: Thlinx	   
echo  Desenvolvido em: 12/08/25 
echo  github: Tharik.LS      
echo =============================
pause
cls

:menu
cls
echo ==========================
echo menu de opcao:
echo ==========================
echo [1]Limpar a pasta temp
echo [2]Limpar o disco 
echo [3]Defragmentar o disco
echo [4]Tirar modo hibernacao
echo [5]Instalar o Powershell 7
echo [6]Instalar o Teams
echo [7]Instalar o ThingVNC
echo [0]sair
set /p opcao="Digite o numero da opcao:"
cls

if %opcao% == 1 goto temp
if %opcao% == 2 goto clean
if %opcao% == 3 goto defrag
if %opcao% == 4 goto hibernacao
if %opcao% == 5 goto installPw
if %opcao% == 6 goto installTeams
if %opcao% == 7 goto installVNC
if %opcao% == 0 goto sair

:temp
echo limpando a pasta temp...
del /f/s/q C:\Windows\Temp\*
pause
goto menu

:clean
echo limpando o residuos do disco...
chkdsk C: /f /r
cleanmgr /d C:
pause
goto menu

:defrag
echo realizando a defragmentacao do disco
defrag c: /d /o /u
pause
goto menu

:hibernacao
echo desativando a hibernação
powercfg -h off
pause
goto menu

:installTeams
winget install --id=Microsoft.Teams  -e
pause
goto menu

:installVNC
winget install --id=GlavSoft.TightVNC  -e
pause
goto menu

:installPW
winget install --id Microsoft.PowerShell --source winget
pause
goto menu

:sair
echo saindo do programa...
timeout /t 3

exit
