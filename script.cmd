@echo off
:: בדיקה אם יש קלט
if "%~1"=="" (
    echo Usage: script.cmd [your_input]
)

:: יצירת משתנה לתאריך ושעה בצורה חדשה
for /f "tokens=1-3 delims=/ " %%a in ('echo %date%') do set current_date=%%c-%%a-%%b
for /f "tokens=1-2 delims=: " %%a in ('echo %time%') do set current_time=%%a-%%b
set timestamp=%current_date%_%current_time%

:: יצירת שם קובץ עם תאריך
set filename=output_%timestamp%.html

:: כתיבת התוכן לקובץ
(
echo ^<html^>
echo ^<body^>
echo ^<h1^>User Input Log^</h1^>
:: בדיקה אם יש קלט
if "%~1"=="" (
    echo ^<p^>User Input: user aint provided input^</p^>
) else (
    echo ^<p^>User Input: %~1^</p^>
)
echo ^<p^>User Input: %~1^</p^>
echo ^<p^>Timestamp: %timestamp%^</p^>
echo ^</body^>
echo ^</html^>
) > %filename%

echo File created: %filename%
