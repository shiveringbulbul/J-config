FROM	python:3.7

RUN		apt-get update
RUN		pip install -U pip setuptools

WORKDIR	/home/wetrade
COPY	requirements.txt .
RUN		pip install -r requirements.txt
