@echo off

del *.html
del *.js
del objects.inv
rmdir /S /Q _sources
rmdir /S /Q _static

xcopy docs\build\html . /E
