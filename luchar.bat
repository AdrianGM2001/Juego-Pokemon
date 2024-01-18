cls
type %sprite%

rem Mostrar ataques y efecto
echo OPCIONES:
echo 1) %ataqueNombre11% - PODER: %ataquePoder11%, EFECTO: %ataqueEfecto11%
echo 2) %ataqueNombre12% - PODER: %ataquePoder12%, EFECTO: %ataqueEfecto12%
echo 3) %ataqueNombre13% - PODER: %ataquePoder13%, EFECTO: %ataqueEfecto13%
echo 4) %ataqueNombre14% - PODER: %ataquePoder14%, EFECTO: %ataqueEfecto14%
echo %colorRojo%0) Volver%colorNormal%

:elegirOpcionLuchar
set /p opcionLuchar=Elige una opcion: 
echo.

rem Calculamos la prioridad del ataque (quien ataca primero)
call prioridad.bat

if %prioridad%==pokemon1 (
    rem Ataca primero el aliado
    call ataque1.bat
    if !volverMenu!==true (
        set volverMenu==false
        goto :finLuchar
    ) else if !volverAtaque!==true (
        set volverAtaque==false
        goto :finLuchar
    )
    if !vida2! GTR 0 (
        rem Si el enemigo sigue vivo, puede atacar
        call ataque2.bat
    )
) else if !opcionLuchar! EQU 0 (
    goto :elegirOpcionCombate
) else (
    rem Ataca primero el enemigo
    call ataque2.bat
    if !vida1! GTR 0 (
        rem Si el aliado sigue vivo, puede atacar
        call ataque1.bat
    )
)

if %vida1% LEQ 0 (
    rem El aliado se ha debilitado
    echo %pokemon1% se ha debilitado.
) else if %vida2% LEQ 0 (
    rem El enemigo se ha debilitado
    echo %pokemon2% se ha debilitado.
)

echo.
pause

:finLuchar
