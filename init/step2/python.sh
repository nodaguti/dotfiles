#!/bin/sh

eval "$(pyenv init -)"
pyenv install 3.7.3
pyenv global 3.7.3

curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
