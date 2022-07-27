@echo off & setlocal EnableDelayedExpansion
color 0A
title MultiCloneProject 

:main
echo ##########################################################
echo ###########CREDITS BY GITHUB.COM/MAXISANDOVAL37###########
echo ##########################################################
echo.
echo                  _________-----_____
echo        ____------           __      ----_
echo  ___----             ___------              \
echo     ----________        ----                 \
echo                -----__    ^|             _____)
echo                     __-                /     \
echo         _______-----    ___--          \    /)\
echo   ------_______      ---____            \__/  /
echo                -----__    \ --    _          /\
echo                       --__--__     \_____/   \_/\
echo                               ---^|   /          ^|
echo                                  ^| ^|___________^|
echo                                  ^| ^| ((_(_)^| )_)
echo                                  ^|  \_((_(_)^|/(_)
echo                                   \             (
echo                                    \_____________)
echo.
echo.

:runScript
for /f "tokens=*" %%h in (repo_list.txt) do (
	
	set repoName=%%h
	echo !repoName!

	git clone https://mySite@dev.azure.com/repositories/_git/!repoName!

	echo ----------------------------------------------------------
)

echo.
echo                    SCRIPT RUN SUCCESSFULL
echo.
goto quit

:quit
pause
