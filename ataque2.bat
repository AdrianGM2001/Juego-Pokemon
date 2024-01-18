rem Usar un ataque aleatorio
set /a alea=(%random% %% 4) + 1

rem Establecer ataque
if %alea% EQU 1 (
    set ataqueNombre2=%ataqueNombre21%
    set ataquePoder2=%ataquePoder21%
    set ataqueTipo2=%ataqueTipo21%
) else if %alea% EQU 2 (
    set ataqueNombre2=%ataqueNombre22%
    set ataquePoder2=%ataquePoder22%
    set ataqueTipo2=%ataqueTipo22%
) else if %alea% EQU 3 (
    set ataqueNombre2=%ataqueNombre23%
    set ataquePoder2=%ataquePoder23%
    set ataqueTipo2=%ataqueTipo23%
) else if %alea% EQU 4 (
    set ataqueNombre2=%ataqueNombre24%
    set ataquePoder2=%ataquePoder24%
    set ataqueTipo2=%ataqueTipo24%
)

rem Mostrar ataque y cambiar estadisticas
echo %pokemon2% ha usado %ataqueNombre2%.
rem Calcular el danyo
call danyoataque2.bat
rem Restar la vida
set /a vida1-=%danyo%

if "!ataqueNombre2!"=="Malicioso" (
    rem Bajar la defensa un punto
    set /a defensa1-=1
) else if "!ataqueNombre2!"=="Megaagotar" (
    rem Recuperar como vida la mitad del daño causado
    set /a vida2+=%danyo%/2
) else if "!ataqueNombre2!"=="Grunyido" (
    rem Bajar el ataque un punto
    set /a ataque1-=1
)
