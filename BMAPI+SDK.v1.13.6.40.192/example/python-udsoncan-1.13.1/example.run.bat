set PATH=../python-can-3.3.4/can/interfaces/bmcan;%PATH%
set PYTHONPATH=.;../python-can-3.3.4;%PYTHONPATH%
:retry
python examples\download_hex_file.py
goto retry