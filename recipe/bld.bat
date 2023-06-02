:: remove old egg-info directory
rmdir /s /q src\finesse.egg-info

:: tell python about the compiler
set CFGDIR="%PREFIX%\Lib\distutils"
set CFG=%CFGDIR%\distutils.cfg
if not exist "%CFGDIR%\" mkdir "%CFGDIR\"
if errorlevel 1 exit 1
echo [config] > "%CFG%"
if errorlevel 1 exit 1
echo compiler=msvc >> "%CFG%"
echo [build] >> "%CFG%"
echo compiler=msvc >> "%CFG%"
echo [build_ext] >> "%CFG%"
echo compiler=msvc >> "%CFG%"

:: build the package
%PYTHON% -m pip install . -vv
if errorlevel 1 exit 1
