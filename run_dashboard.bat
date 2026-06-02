@echo off
echo Stopping existing Live Threat Map Dashboard on port 8001...
for /f "tokens=5" %%a in ('netstat -ano ^| findstr LISTENING ^| findstr :8001') do taskkill /F /PID %%a 2>nul
echo Starting Live Threat Map Dashboard...
call venv\Scripts\activate.bat
python main.py
pause
