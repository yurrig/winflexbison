setlocal
call %~dp0..\vc_setup.cmd
set BUILD=build
title Configuring Bison
%CMAKE% -S . -B %BUILD%
call :do_build Release
title Done building Bison
endlocal

goto:eof

:do_build
  title Building Bison %1
  msbuild /m %BUILD%\bison\win_bison.sln -p:Configuration=%1
  goto:eof
