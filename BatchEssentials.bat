@echo off
set pname=Batch Essentials
title %pname%
:menumid
echo ---%pname%'s Mid Menu---
echo Enter 1 to Install the UBC Combo. (Git and a Github account required)
echo Enter 2 to Use a Calculator.
echo Enter 3 to Exit.
set choice=
set /p choice=Type your option:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto UBCGit
if '%choice%'=='2' goto calc
if '%choice%'=='3' goto eof

:UBCGit
echo Cloning UBC repository...
git clone https://github.com/BatchProgrammerWhoSuckAtIt/UBC.git

echo Cloning UBCLight repository...
git clone https://github.com/BatchProgrammerWhoSuckAtIt/UBCLight.git

echo Cloning UBCMOPTIONS repository...
git clone https://github.com/BatchProgrammerWhoSuckAtIt/UBCMOPTIONS-SourceCode-Github-Release.git

echo Done.
pause
cls
goto menumid
