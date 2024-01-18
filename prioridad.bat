if %velocidad1% GTR %velocidad2% (
    rem La prioridad es del mas rapido
    set prioridad=pokemon1
) else (
    set prioridad=pokemon2
)

if "%ataqueNombre1%"=="Ataque rapido" (
    rem La prioridad es de quien use un ataque que otorgue prioridad
    set prioridad=pokemon1
) else if "%ataqueNombre2%"=="Ataque rapido" (
    set prioridad=pokemon2
)
