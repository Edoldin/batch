echo off
setlocal enabledelayedexpansion
cls
echo Respuesta al ping de las distintas ips: >./pingsIps.txt
echo.>>./pingsIps.txt
rem(recorremos todos los numeros del 1 al 255)
FOR /L %%i IN (1,1,255) DO (
    rem(imprimimos la ip que estamos comprobando para tener idea de por donde va)
    echo 10.227.120.%%i
    rem(hacemos el pin a la ip y comprobamos si la respuesta tiene por algún sition 'TTL=' para saber si esta activo o no)
    ping -n 1 10.227.120.%%i | find "TTL=" >nul
    rem(el find nos devuelve errorLevel 1 si no encuentra)
    if errorlevel 1 (
        echo 10.227.120.%%i ^| X >>./pingsIps.txt
    ) else (
        rem(el find nos devuelve errorLevel 0 si encuentra)
        echo 10.227.120.%%i ^| S >>./pingsIps.txt
    )
)