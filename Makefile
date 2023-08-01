install:
	# install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt
format:
	# format code
	black *.py mylib/*.py
lint:
	# flake8 or #pylint
	pylint --disable=R,C *.py mylib/*.py
test:
	python -m pytest --cov=.
build:
	# build container
deploy:
	#deploy
all: install lint test deploy