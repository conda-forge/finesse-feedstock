:: remove old egg-info directory
rmdir /s /q src\finesse.egg-info

:: build the package
set CYTHON_FORCE=1
%PYTHON% setup.py build_ext --inplace --compiler=msvc
if errorlevel 1 exit 1

:: build the package
set CYTHON_FORCE=
%PYTHON% setup.py install
if errorlevel 1 exit 1
