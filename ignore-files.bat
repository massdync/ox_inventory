@echo off
cd /d %~dp0

for %%F in (data\*.lua) do (
    echo Ignoring changes to %%F
    git update-index --assume-unchanged %%F
)

echo Done.