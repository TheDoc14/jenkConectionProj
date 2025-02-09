@echo off
:: יצירת חותמת זמן
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set datetime=%%I
set timestamp=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2%_%datetime:~8,2%-%datetime:~10,2%

:: שם הקובץ עם חותמת הזמן
set filename=output_%timestamp%.html

:: יצירת קובץ HTML עם התוכן
echo Hello, Jenkins! You provided: %1 > %filename%
echo ^<html^>^<body^>^<h1^>User Input Log^</h1^>^<p^>%1^</p^>^</body^>^</html^> >> %filename%

:: הצגת שם הקובץ שנוצר
echo Created file: %filename%
