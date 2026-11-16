@echo off
REM Problema 6 - F1.BAT
REM Modificati F1.BAT astfel incat sa nu mai primeasca parametri
REM formali, ci sa isi ia datele din variabilele interpretorului.

REM Scrieti solutia mai jos:
md %S%
cd %S%

:bucla
call meniu
if errorlevel 3 goto op3
if errorlevel 2 goto op2
if errorlevel 1 goto op1
if errorlevel 0 goto final
goto bucla

:op1
copy con %F%.txt
goto bucla

:op2
if exist %F%.txt (
    sort < %F%.txt > %F%.srt
) else (
    echo Fisierul %F%.txt nu exista!
)
goto bucla

:op3
if exist %F%.srt (
    type %F%.srt
) else (
    echo Fisierul %F%.srt nu exista!
)
goto bucla

:final
cd
cd ..
