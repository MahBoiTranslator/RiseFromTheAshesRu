@echo off

: Сборка шрифтов
call zBuild.bat
timeout /t 3 > nul

: Копирование файлов в папку _Test
mkdir _Test
xcopy /h /y /c /r /s Build\ _Test\

: Задержка необходима для того, чтобы файлы успели скопироваться
timeout /t 3 > nul

: Запуск клиента
cd _Test
start "" "Rise From The Ashes.exe"
