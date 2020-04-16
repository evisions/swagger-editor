@echo off

REM This script prepares this project for use in a developer's environment

goto start

:npm_link
REM Link to npm packages
cmd /c npm link %1 2>nul || echo Warning: %1 doesn't exist
exit /B

:start

attrib +H node_modules

cmd /c npm link

exit /B 0
