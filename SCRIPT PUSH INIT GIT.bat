@echo off & setlocal EnableDelayedExpansion
color 0A
title MultiPushProject 

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

	cd !repoName!
	git init
	git remote add origin https://miSite@dev.azure.com/repositories/_git/!repoName!
	git add .
	git commit -m "svn to git migration 2022 :D"
	git push -u origin --all
	cd ..

	echo ----------------------------------------------------------
)

echo.
echo                    SCRIPT RUN SUCCESSFULL
echo.
goto quit

:quit
pause