install:
	#install command
	pip install --upgrade pip &&\
		pip install -r requirements.txt
format:
	#format
lint:
	#flake8 or #pylint
test:
	#test
deploy:
	#deploy
all: install lint test deploy