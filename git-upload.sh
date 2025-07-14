@echo off
SET /P MSG="Enter commit message: "
IF "%MSG%"=="" SET MSG=Site update %date% %time%

echo Adding changes...
git add .

echo Committing...
git commit -m "%MSG%"

echo Pushing to origin...
git push origin main

echo Done.
pause
