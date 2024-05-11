install:
	#install command
	pip install --upgrade pip &&\
		pip install -r requirements.txt
format:
	#format
	black *.py mylib/*py
lint:
	#flake8 or #pylint
	pylint --disable=R,C *.py mylib/*py
test:
	#test
	python -m pytest -vv --cov=mylib test_logic.py
build:
	#build container
	docker build -t deploy_fastapi.
run:
	#run image
	docker run -p 127.0.0.1:8080:8080 5585e831b6d3
deploy:
	#deploy
all: install lint test deploy