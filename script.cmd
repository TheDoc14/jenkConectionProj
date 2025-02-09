@echo off
:: בדיקה האם יש פרמטר שהועבר
if "%1"=="" (
    echo Usage: script.cmd [your_input]
    exit /b 1
)

:: יצירת משתנה לתאריך ושעה
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set datetime=%%I
set timestamp=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2%_%datetime:~8,2%-%datetime:~10,2%-%datetime:~12,2%

:: יצירת שם קובץ עם תאריך
set filename=output_%timestamp%.html

:: כתיבת התוכן לקובץ
(
echo ^<html^>
echo ^<body^>
echo ^<h1^>User Input Log^</h1^>
echo ^<p^>User Input: %1^</p^>
echo ^<p^>Timestamp: %timestamp%^</p^>
echo ^</body^>
echo ^</html^>
) > %filename%

echo File created: %filename%
