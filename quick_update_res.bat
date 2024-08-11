::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCqDJGmW+0g1Kw9HcCmLL2ipOpgV5uG73/iIqEgeQPEDVa76UlNEpQrbbL4w82D9Xp6gHjfAMB5AexG+eg42pWt+MJ9RsTFMO9oFzJJ5qE4oHgU=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

echo.
echo Author: S.H.W (https://github.com/SHthemW)
echo.

set REPO_PATH=%~dp0_MaaResource
set TARGET_PATH=%~dp0

echo repo_path: %REPO_PATH%
echo copy_dest: %TARGET_PATH%
echo.

if not exist "%TARGET_PATH%MAA.exe" (
    echo please put this file to the SAME directory of MAA.exe!
    echo.
    pause
    exit /b
)

if not exist "%REPO_PATH%" (
    echo creating repo path...
    echo.
    mkdir "%REPO_PATH%"
)

cd %REPO_PATH%

if not exist ".git" (
    echo cloneing repo from remote...
    echo.
    git clone https://github.com/MaaAssistantArknights/MaaResource.git "%REPO_PATH%"
    if %errorlevel% neq 0 (
        echo failed to clone, see above to check.
        echo.
        pause
        exit /b
    )
) else (
    git pull
    if %errorlevel% neq 0 (
        echo failed to pull update, see above to check.
	echo.
        pause
        exit /b
    )
)

xcopy * "%TARGET_PATH%" /E /Y

echo.
echo process completed.
echo.

pause
