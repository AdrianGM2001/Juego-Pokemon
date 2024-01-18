cls
type .\ansi\iniciales.ans
echo.
echo Treecko, Torchic o Mudkip:

:elegirPokemon
set /p eleccion=Elige tu inicial: 
if /i !eleccion!==treecko (
    rem Eliges a Treecko
    call treecko.bat
) else if /i !eleccion!==torchic (
    rem Eliges a Torchic
    call torchic.bat
) else if /i !eleccion!==mudkip (
    rem Eliges a Mudkip
    call mudkip.bat
) else (
    echo %colorRojo%Debes elegir uno de los tres Pokemon.%colorNormal%
    goto :elegirPokemon
)

echo %colorVerde%Has elegido a %pokemon1%.%colorNormal%
pause
