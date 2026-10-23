@echo off
setlocal
cd /d "%~dp0"
title XWordGiver PAT-Switcher

:MENU
cls
echo ==========================================
echo          XWordGiver PAT-Switcher
echo ==========================================
echo.
echo  [1] Deutsches Woerterbuch
echo  [2] Englisches Woerterbuch
echo  [3] Beenden
echo.
choice /C 123 /N /M "Auswahl: "

if errorlevel 3 goto END
if errorlevel 2 goto ENGLISH
if errorlevel 1 goto GERMAN

:GERMAN
if not exist "PAT-DEU.txt" (
    cls
    echo FEHLER: PAT-DEU.txt wurde nicht gefunden.
    echo.
    echo Die Datei muss im selben Ordner wie PAT-Switcher.bat liegen.
    echo.
    pause
    goto MENU
)
copy /Y "PAT-DEU.txt" "PAT.txt" >nul
if errorlevel 1 goto COPYERROR
cls
echo Deutsches PAT wurde aktiviert.
echo.
echo PAT-DEU.txt wurde als PAT.txt kopiert.
echo XWordGiver kann jetzt mit dem deutschen Woerterbuch gestartet werden.
echo.
pause
goto END

:ENGLISH
if not exist "PAT-ENG.txt" (
    cls
    echo FEHLER: PAT-ENG.txt wurde nicht gefunden.
    echo.
    echo Benenne die originale englische PAT.txt von XWordGiver
    echo einmalig in PAT-ENG.txt um.
    echo.
    pause
    goto MENU
)
copy /Y "PAT-ENG.txt" "PAT.txt" >nul
if errorlevel 1 goto COPYERROR
cls
echo Englisches PAT wurde aktiviert.
echo.
echo PAT-ENG.txt wurde als PAT.txt kopiert.
echo XWordGiver kann jetzt mit dem englischen Woerterbuch gestartet werden.
echo.
pause
goto END

:COPYERROR
cls
echo FEHLER: PAT.txt konnte nicht geschrieben werden.
echo.
echo Pruefe, ob der XWordGiver-Ordner schreibgeschuetzt ist
echo oder ob fuer den Ordner Administratorrechte erforderlich sind.
echo.
pause
goto END

:END
endlocal
exit /b
