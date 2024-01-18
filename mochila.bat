cls
type .\ansi\potion.ans

rem Mostrar objetos mochila
echo 1) Pocion - Restaura 10PS a un Pokemon
echo %colorRojo%0) Volver%colorNormal%

:elegirOpcionMochila
set /p opcionMochila=Introduce una opcion:
if !opcionMochila! EQU 1 (
    rem Restaurar PS
    set /a vida1+=10
    echo %colorVerde%Has restaurado 10PS a %pokemon1% con Pocion.%colorNormal%
    rem El pokemon2 ataca
    call ataque2.bat
) else if !opcionMochila! NEQ 0 (
    goto :elegirOpcionMochila
)

pause
