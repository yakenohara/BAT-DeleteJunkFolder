@echo off
if %1.==. goto end
if not exist %1 goto end

@echo on
for /f "delims=" %%f in ('dir %1\* /ad /b /s ^| sort /r') do rd "%%f"

@echo off
echo Done!

:end

