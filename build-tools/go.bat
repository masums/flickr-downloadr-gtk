@echo off
IF dummy==dummy%2 (
  nant\nant-0.92\bin\NAnt.exe -buildfile:windows.build %1 -D:project.build.type=Debug
) ELSE (
  nant\nant-0.92\bin\NAnt.exe -buildfile:windows.build %1 -D:project.build.type=%2
)
echo 'errorlevel is ' %errorlevel%
date /t && time /t

if %errorlevel% neq 0 exit /b %errorlevel%