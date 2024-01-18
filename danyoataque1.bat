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
if "%ataqueBase1%"=="Fisico" (
    set A=%ataque1%
    set D=%defensa2%
) else (
    set A=%ataqueEspecial1%
    set D=%defensaEspecial2%
)

rem B
if %tipo1%==%ataqueTipo1% (
    set B=15
) else (
    set B=10
)

rem E
rem Si el ataque no es mas efectivo contra el oponente (por defecto)
set E=10 

if "%ataqueTipo1%"=="%tipo2%" (
    rem Si el ataque es del mismo tipo que el oponente
    set /a E=5
) else (
    if "%ataqueTipo1%"=="Planta" if "%tipo2%"=="Agua" (
        rem Si el ataque es del tipo fuerte contra el oponente
        set /a E=20
    )
    if "%ataqueTipo1%"=="Agua" if "%tipo2%"=="Fuego" (
        rem Si el ataque es del tipo fuerte contra el oponente
        set /a E=20
    )
    if "%ataqueTipo1%"=="Fuego" if "%tipo2%"=="Planta" (
        rem Si el ataque es del tipo fuerte contra el oponente
        set /a E=20
    )
)

rem V
set /a V=%RANDOM% %% 16

if %ataquePoder1% NEQ 0 (
    rem Si el poder del ataque no es 0
    set /a danyo="(%A%+%ataquePoder2%-%D%)*(%B%+%E%+%V%)/100"
    if !danyo! LSS 0 (
        rem Si saliese danyo negativo se establece a 0
        set danyo=0
    )
) else (
    set danyo=0
)
