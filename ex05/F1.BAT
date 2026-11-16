@echo off
REM Problema 5 - F1.BAT
REM Imbunatatiti F1.BAT, facand verificari de existenta a
REM fisierelor daca MENIU returneaza 2 sau 3.

REM Scrieti solutia mai jos:
md %1
cd %1

:bucla
call meniu
if errorlevel 3 goto op3
if errorlevel 2 goto op2
if errorlevel 1 goto op1
if errorlevel 0 goto final
goto bucla

:op1
copy con %2.txt
goto bucla

:op2
if exist %2.txt (
    sort < %2.txt > %2.srt
) else (
    echo Fisierul %2.txt nu exista!
)
goto bucla

:op3
if exist %2.srt (
    type %2.srt
) else (
    echo Fisierul %2.srt nu exista!
)
goto bucla

:final
cd
cd ..

