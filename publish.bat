@echo off
setlocal

set "SOURCE=.\bin\Release\net8.0\browser-wasm\publish\wwwroot"
set "DEST=.\docs"

if not exist "%DEST%" (
    mkdir "%DEST%"
)

xcopy "%SOURCE%\*" "%DEST%\" /E /H /Y /I

endlocal