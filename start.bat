@echo off
echo ========================================================
echo   Cheminformatics Virtual Lab Suite - Quick Launcher
echo ========================================================
echo.

if exist "venv\Scripts\python.exe" (
    echo [1/2] Starting Python FastAPI backend (Port 8000)...
    start "FastAPI Backend" cmd /c "venv\Scripts\python.exe -m uvicorn api.index:app --reload --port 8000"
) else (
    echo [1/2] Virtual environment not found, trying system python...
    start "FastAPI Backend" cmd /c "python -m uvicorn api.index:app --reload --port 8000"
)

echo [2/2] Starting Next.js frontend (Port 3000)...
start "Next.js Frontend" cmd /c "npm run dev:next"

echo.
echo Servers starting up!
echo   Frontend: http://localhost:3000
echo   Backend:  http://localhost:8000
echo ========================================================
