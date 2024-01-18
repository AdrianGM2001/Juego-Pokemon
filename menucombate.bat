cls
type %sprite%

rem Mostrar las estadisticas
echo %colorVerde%Estadisticas aliado:%colorNormal%
echo HP: %vida1%                
echo ATK: %ataque1%             
echo DEF: %defensa1%            
echo SP_ATK: %ataqueEspecial1%  
echo SP_DEF: %defensaEspecial1% 
echo SPD: %velocidad1%          
echo TIPO: %tipo1%              
echo.
echo %colorRojo%Estadisticas enemigo:%colorNormal%
echo HP: %vida2%
echo ATK: %ataque2%
echo DEF: %defensa2%
echo SP_ATK: %ataqueEspecial2%
echo SP_DEF: %defensaEspecial2%
echo SPD: %velocidad2%
echo TIPO: %tipo2%
echo.
echo.
echo 1) LUCHAR 2) MOCHILA %colorRojo%3) HUIR%colorNormal%

:elegirOpcionCombate
set /p opcionCombate=Elige una opcion: 

if %opcionCombate% EQU 1 (
    rem Menu luchar
    call luchar.bat
) else if %opcionCombate% EQU 2 (
    rem Menu mochila
    call mochila.bat
) else if %opcionCombate% EQU 3 (
    rem Escapar
    echo.
    echo %colorVerde%Has escapado del combate%colorNormal%
    pause
) else (
    goto :elegirOpcionCombate
)
