### Docs

~~~
C:\Users\uqbjeon\Downloads\download\DEV\phd
python3.8 -m venv venv

.\venv\Scripts\activate

python -m pip install sphinx

sphinx-build --version

## new project
sphinx-quickstart docs

## compile to genearte
sphinx-build -b html docs/source/ docs/build/html

## edit && compile
cd brendanjeon.github.io
rsub docs/source/index.rst
./clean.bat
./html.bat
./update.bat

~~~


https://www.sphinx-doc.org/en/master/tutorial/getting-started.html#setting-up-your-project-and-development-environment
