@echo off
del /q /s storage\framework\cache\*
del /q /s storage\framework\views\*
del /q /s storage\framework\sessions\*
del /q /s bootstrap\cache\*
echo Cache cleared successfully