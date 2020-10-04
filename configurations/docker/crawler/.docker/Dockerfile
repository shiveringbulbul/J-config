FROM python:3.7


RUN apt-get update
RUN pip install -U pip setuptools

WORKDIR /home/jackrawler

RUN pip install \
  # debug
  ipdb \
  # logger
  loguru \
  # send request to source
  aiohttp \
  requests \
  # send ws request to source
  websocket \
  websocket-client


ENTRYPOINT /usr/local/bin/python
