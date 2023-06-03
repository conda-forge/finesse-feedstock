:: remove old egg-info directory
rmdir /s /q src\finesse.egg-info

:: build the package
%PYTHON% setup.py build_ext --inplace --compiler=msvc
if errorlevel 1 exit 1

:: build the package
%PYTHON% -m pip install . -vv
if errorlevel 1 exit 1
