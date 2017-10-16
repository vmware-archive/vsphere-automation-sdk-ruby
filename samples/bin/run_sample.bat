@echo off
setlocal ENABLEDELAYEDEXPANSION
:: Clear the command-prompt screen
cls

:: Go to sample home directory
cd %~dp0
cd ..

:: FYI: these variables are setup for production deployment only (not development mode)
set RUNTIME_LIB=..\sdk\runtime\lib
set SAMPLE_LIB=lib
set SDK_LIB=..\sdk

setlocal DisableDelayedExpansion
:: Run the sample
ruby -I%RUNTIME_LIB% -I%SDK_LIB% -I%SAMPLE_LIB% bin\launcher.rb %*
endlocal
