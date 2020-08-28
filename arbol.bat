@echo off
setlocal enabledelayedexpansion
echo.          
echo                /\        > .\arbol.txt
echo               /O\\       >> .\arbol.txt
echo              ///\O\      >> .\arbol.txt
echo             /O//O\\\     >> .\arbol.txt
echo            ///O/\\\O\    >> .\arbol.txt
echo           /O////O\\\\\   >> .\arbol.txt
echo          ///O///\\O\\O\  >> .\arbol.txt
echo         /O///O//O\\\O\\\ >> .\arbol.txt
echo        //O//O///\\\O\\O\\>> .\arbol.txt
echo                ##        >> .\arbol.txt
echo                ##        >> .\arbol.txt
echo     F E L I Z  N A V I D A D  >> .\arbol.txt
rem type .\arbol.txt
set /a  x=0
:loop
    cls
    echo.
    rem(tokens para que coja /\# y no lo intente interpretar)
    rem(delims para que no se salte los espacios)
    for /F "tokens=* delims=" %%A in (.\arbol.txt) do (
        set cadena=%%A
        rem como son variables locales usamos ! en vez de %
        rem(bolitas de navidad)
        rem  es el teclado numérico nº 027
        if %x%==0 set cadena=!cadena:O=[31mO[0m!
        if %x%==1 set cadena=!cadena:O=[96mO[0m!
        if %x%==2 set cadena=!cadena:O=[94mO[0m!
        if %x%==3 set cadena=!cadena:O=[95mO[0m!
        rem hojas verdes
        set cadena=!cadena:/=[32m/[0m!
        set cadena=!cadena:\=[32m\[0m!
        rem tronco marrón
        set cadena=!cadena:#=[33m#[0m!
        echo !cadena!
    )
    set /a "x=(!x!+1)%%4"
    timeout /t 1 >nul
goto loop 
