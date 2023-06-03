:: remove old egg-info directory
rmdir /s /q src\finesse.egg-info

:: build the package
set CYTHON_FORCE=1
%PYTHON% setup.py isntall build --inplace --compiler=msvc
if errorlevel 1 exit 1