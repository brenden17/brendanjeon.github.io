#!/bin/bash

cd docs/
make clean
make html
cd ..

rm *.html
rm *.js
#rm .buildinfo
rm objects.inv
rm -rf _sources
rm -rf _static

cp -rf docs/build/html/* .
