rem La formula para calcular el danyo sera la siguiente
rem danyo = (A + P - D) * (B + E + V) / 100
rem Donde:
rem A es el ataque o ataqueEspecial
rem P es el ataquePoder
rem D es la defensa o defensaEspecial
rem B es una bonificacion por tipo, puede valer 10 o 15
rem E es la efectividad, puede valer 5, 10 o 20
rem V es la variacion, es un parametro aleatorio que esta entre 0 y 15

rem A, D
if "%ataqueBase2%"=="Fisico" (
    set A=%ataque2%
    set D=%defensa1%
) else (
    set A=%ataqueEspecial2%
    set D=%defensaEspecial1%
)

rem B
if %tipo2%==%ataqueTipo2% (
    set B=15
) else (
    set B=10
)

rem E
rem Si el ataque no es mas efectivo contra el oponente (por defecto)
set E=10 

if "%ataqueTipo2%"=="%tipo1%" (
    rem Si el ataque es del mismo tipo que el oponente
    set E=5
) else (
    if "%ataqueTipo2%"=="Planta" if "%tipo1%"=="Agua" (
        rem Si el ataque es del tipo fuerte contra el oponente
        set E=20
    )
    if "%ataqueTipo2%"=="Agua" if "%tipo1%"=="Fuego" (
        rem Si el ataque es del tipo fuerte contra el oponente
        set E=20
    )
    if "%ataqueTipo2%"=="Fuego" if "%tipo1%"=="Planta" (
        rem Si el ataque es del tipo fuerte contra el oponente
        set E=20
    )
)

rem V
set /a V=%RANDOM% %% 16

if %ataquePoder2% NEQ 0 (
    rem Si el poder del ataque no es 0
    set /a danyo="(%A%+%ataquePoder2%-%D%)*(%B%+%E%+%V%)/100"
    if !danyo! LSS 0 (
        rem Si saliese danyo negativo se establece a 0
        set danyo=0
    )
) else (
    set danyo=0
)
