@echo off
echo.
echo  ================================================
echo   ESSAY BUILDER - Local Server Launcher
echo  ================================================
echo.

:: Try Python 3 first
python --version >nul 2>&1
if %errorlevel% == 0 (
    echo  Starting server on http://localhost:8080
    echo  Opening browser...
    echo.
    echo  Press Ctrl+C to stop the server when done.
    echo.
    start "" "http://localhost:8080/index.html"
    python -m http.server 8080
    goto end
)

:: Try py launcher (Windows Python launcher)
py --version >nul 2>&1
if %errorlevel% == 0 (
    echo  Starting server on http://localhost:8080
    start "" "http://localhost:8080/index.html"
    py -m http.server 8080
    goto end
)

:: Python not found
echo  Python is not installed or not in PATH.
echo.
echo  OPTION 1 - Install Python:
echo    https://www.python.org/downloads/
echo    Tick "Add Python to PATH" during install.
echo.
echo  OPTION 2 - Use GitHub Pages instead:
echo    Push index.html to your repo root, enable
echo    Pages in Settings, and open:
echo    https://mhnashtai-prog.github.io/B2-essay-lecture/
echo.
pause

:end
