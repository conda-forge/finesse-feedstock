:: remove old egg-info directory
rmdir /s /q src\finesse.egg-info

:: build the package
%PYTHON% pip install . -vv
if errorlevel 1 exit 1