@echo off

del *.html
del *.js
del .buildinfo
del objects.inv
rmdir /S /Q _sources
rmdir /S /Q _static

xcopy docs\build\html . /E

git add .
git commit -m "added"
git push origin main