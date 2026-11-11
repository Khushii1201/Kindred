@echo off
cd /d "%~dp0"
start "Kindred local server" /min cmd /k "cd /d ""%~dp0"" && py -m http.server 8000"
timeout /t 2 /nobreak >nul
start "" http://localhost:8000
