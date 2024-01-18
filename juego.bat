@echo off
rem ADRIAN GONZALEZ
setlocal enabledelayedexpansion
chcp 850
set colorVerde=[38;2;0;255;0m
set colorRojo=[38;2;255;0;0m
set colorNormal=[0m
cls

rem Pantalla inicio
call pantallainicio.bat

rem Elegir el Pokemon
call elegirPokemon.bat

rem Pantalla principal combate
:menuCombate
call menucombate.bat

rem Opcion de huir
if %opcionCombate% EQU 3 (
    goto :fin
)

if !vida1! GTR 0 if !vida2! GTR 0 (
    rem Si ambos siguen con vida se continua el combate
    goto :menuCombate
)
if !vida1! GTR 0 (
    rem Si el que sigue con vida es el Pokemon 1 se gana el combate
    echo %colorVerde%Has ganado el combate%colorNormal%
) else (
    rem Si el que sigue con vida es el Pokemon 2 se pierde el combate
    echo %colorRojo%Has perdido el combate%colorNormal%
)

:fin
