@echo off
color 0F
title Extinction
:top
echo.
echo.
echo.
echo.
echo.
echo a. Annuler et quitter le batch
echo b. Redemarrer l'ordinateur dans le
echo    temps que vous avez indiquez
echo.
echo z. Savoir ou en est le temps...
echo.
echo    ---- AJOUTER DES JOURS ------- AJOUTER DES HEURES ----
echo    ----                       -                        ----
echo    ---   c. Ajouter 1 jour    -   g. Ajouter 1 heure    ---
echo    ---   d. Ajouter 5 jours   -   h. Ajouter 8 heures   ---
echo    ---   e. Ajouter 30 jours  -   i. Ajouter 16 heures  ---
echo    ---   f. Ajouter 365 jours -                         ---
echo    ----                       -                        ----
echo    ----- AJOUTER DES MINUTES --- AJOUTER DES SECONDES -----
echo    ----                       -                        ----
echo    --- j. Ajouter 1 minute    -  n. Ajouter 1 seconde   ---
echo    --- k. Ajouter 5 minutes   -  o. Ajouter 5 secondes  ---
echo    --- l. Ajouter 15 minutes  -  p. Ajouter 15 secondes ---
echo    --- m. Ajouter 30 minutes  -  q. Ajouter 30 secondes ---
echo    ----                       -                        ----
echo     ------------------------------------------------------
echo.
echo r. Redemarrer l'ordinateur
echo s. Fermeture de la session
echo t. Hiberner
echo x. Arreter l'ordinateur sans delai
echo.
echo.
echo.
echo.
set /p opt=Ajouter un temps ou.et valider le redemarrage : 
if not '%opt%'=='' set opt=%opt:~0,1%
if '%opt%'=='a' goto end
if '%opt%'=='b' goto b
if '%opt%'=='c' goto c
if '%opt%'=='d' goto d
if '%opt%'=='e' goto e
if '%opt%'=='f' goto f
if '%opt%'=='g' goto g
if '%opt%'=='h' goto h
if '%opt%'=='i' goto i
if '%opt%'=='j' goto j
if '%opt%'=='k' goto k
if '%opt%'=='l' goto l
if '%opt%'=='m' goto m
if '%opt%'=='n' goto n 
if '%opt%'=='o' goto o
if '%opt%'=='p' goto p
if '%opt%'=='q' goto q
if '%opt%'=='r' goto r
if '%opt%'=='s' goto s
if '%opt%'=='t' goto t
if '%opt%'=='x' goto x
if '%opt%'=='z' goto z
echo Le choix ' %opt% ' n'est pas valide.
echo.
pause
goto top
:b
shutdown.exe /s /t %input%
goto end
:c
set /a input=%input%+86400
goto top
:d
set /a input=%input%+432000
goto top
:e
set /a input=%input%+2592000
goto top
:f
set /a input=%input%+31536000
goto top
:g
set /a input=%input%+3600
goto top
:h
set /a input=%input%+28800
goto top
:i
set /a input=%input%+57600
goto top
:j
set /a input=%input%+60
goto top
:k
set /a input=%input%+300
goto top
:l
set /a input=%input%+900
goto top
:m
set /a input=%input%+1800
goto top
:n
set /a input=%input%+1
goto top
:o
set /a input=%input%+5
goto top
:p
set /a input=%input%+15
goto top
:q
set /a input=%input%+30
goto top
:r
shutdown /r
goto end
:s
shutdown /l
goto end
:t
shutdown /h
goto end
:x
shutdown /p
goto end
:z
echo Le nombre d'ajouts total est de %input% minutes.
pause
goto top
:end
