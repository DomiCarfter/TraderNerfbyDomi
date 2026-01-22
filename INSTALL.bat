@echo off
:: Automatisches Installations-Script für Trader Nerf by Domi
:: Dieses Script kopiert den Mod automatisch in den richtigen Ordner

echo.
echo ========================================
echo  Trader Nerf by Domi - Installation
echo ========================================
echo.

:: Finde Steam Installation
set "STEAM_PATH=C:\Program Files (x86)\Steam\steamapps\common\7 Days To Die"
set "STEAM_PATH_ALT=C:\Steam\steamapps\common\7 Days To Die"
set "GAME_PATH="

:: Prüfe Standard-Pfad
if exist "%STEAM_PATH%\7DaysToDie.exe" (
    set "GAME_PATH=%STEAM_PATH%"
    echo [OK] Spiel gefunden: %STEAM_PATH%
    goto :found
)

:: Prüfe alternativen Pfad
if exist "%STEAM_PATH_ALT%\7DaysToDie.exe" (
    set "GAME_PATH=%STEAM_PATH_ALT%"
    echo [OK] Spiel gefunden: %STEAM_PATH_ALT%
    goto :found
)

:: Spiel nicht gefunden - Manuelle Eingabe
echo [!] Spiel nicht am Standard-Ort gefunden.
echo.
echo Bitte gib den Pfad zu deinem "7 Days To Die" Ordner ein:
echo (z.B.: C:\Steam\steamapps\common\7 Days To Die)
echo.
set /p "GAME_PATH=Pfad: "

if not exist "%GAME_PATH%\7DaysToDie.exe" (
    echo.
    echo [FEHLER] 7DaysToDie.exe nicht gefunden in: %GAME_PATH%
    echo Bitte überprüfe den Pfad und versuche es erneut.
    pause
    exit /b 1
)

:found
echo.

:: Erstelle Mods-Ordner falls nicht vorhanden
set "MODS_PATH=%GAME_PATH%\Mods"
if not exist "%MODS_PATH%" (
    echo [+] Erstelle Mods-Ordner...
    mkdir "%MODS_PATH%"
    echo [OK] Mods-Ordner erstellt
)

:: Ziel-Ordner
set "TARGET_PATH=%MODS_PATH%\TraderNerfbyDomi"

:: Prüfe ob Mod bereits existiert
if exist "%TARGET_PATH%" (
    echo.
    echo [!] Mod ist bereits installiert in:
    echo     %TARGET_PATH%
    echo.
    echo Möchtest du ihn überschreiben? (J/N)
    set /p "OVERWRITE="

    if /i not "%OVERWRITE%"=="J" (
        echo.
        echo Installation abgebrochen.
        pause
        exit /b 0
    )

    echo [+] Lösche alte Version...
    rmdir /s /q "%TARGET_PATH%"
)

:: Kopiere Mod
echo.
echo [+] Kopiere Mod-Dateien...
xcopy /E /I /Y "%~dp0" "%TARGET_PATH%" >nul

:: Bereinige - entferne unnötige Dateien aus dem Ziel
if exist "%TARGET_PATH%\INSTALL.bat" del "%TARGET_PATH%\INSTALL.bat"
if exist "%TARGET_PATH%\traders_nerfed.xml" del "%TARGET_PATH%\traders_nerfed.xml"
if exist "%TARGET_PATH%\quests_nerfed.xml" del "%TARGET_PATH%\quests_nerfed.xml"
if exist "%TARGET_PATH%\traders.xml" del "%TARGET_PATH%\traders.xml"
if exist "%TARGET_PATH%\quests.xml" del "%TARGET_PATH%\quests.xml"
if exist "%TARGET_PATH%\items.xml" del "%TARGET_PATH%\items.xml"

echo [OK] Mod erfolgreich installiert!
echo.
echo ========================================
echo  Installation abgeschlossen!
echo ========================================
echo.
echo Mod installiert in:
echo %TARGET_PATH%
echo.
echo Naechste Schritte:
echo 1. Starte 7 Days to Die
echo 2. Der Mod wird automatisch geladen
echo 3. Starte ein NEUES Spiel für beste Ergebnisse
echo.
echo Viel Erfolg beim Ueberleben!
echo.
pause
