rem Establecer ataque
if %opcionLuchar% EQU 1 (
    set ataqueNombre1=%ataqueNombre11%
    set ataquePoder1=%ataquePoder11%
    set ataqueTipo1=%ataqueTipo11%
) else if %opcionLuchar% EQU 2 (
    set ataqueNombre1=%ataqueNombre12%
    set ataquePoder1=%ataquePoder12%
    set ataqueTipo1=%ataqueTipo12%
) else if %opcionLuchar% EQU 3 (
    set ataqueNombre1=%ataqueNombre13%
    set ataquePoder1=%ataquePoder13%
    set ataqueTipo1=%ataqueTipo13%
) else if %opcionLuchar% EQU 4 (
    set ataqueNombre1=%ataqueNombre14%
    set ataquePoder1=%ataquePoder14%
    set ataqueTipo1=%ataqueTipo14%
) else if %opcionLuchar% EQU 0 (
    rem Volver al menu del combate
    set volverMenu=true
    goto :finAtaque1
) else (
    rem Volver al menu del ataque
    set volverAtaque=true
    goto :finAtaque1
)

rem Mostrar ataque y cambiar estadisticas
echo %pokemon1% ha usado %ataqueNombre1%.
rem Calculamos el danyo
call danyoataque1.bat
rem Quitamos la vida al enemigo
set /a vida2-=%danyo%

if "!ataqueNombre1!"=="Malicioso" (
    rem Bajar la defensa un punto
    echo La defensa de %pokemon2% bajo
    set /a defensa2-=1
) else if "!ataqueNombre1!"=="Megaagotar" (
    rem Recuperar como vida la mitad del danyo causado
    echo %pokemon1% ha restaurado algo de vida
    set /a vida1+=%danyo%/2
) else if "!ataqueNombre1!"=="Grunyido" (
    rem Bajar el ataque un punto
    echo El ataque de %pokemon2% bajo
    set /a ataque2-=1
)

:finAtaque1
