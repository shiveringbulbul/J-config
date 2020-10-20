FROM  python:3.7.9

# System configs
ENV   TZ=Asia/Shanghai
ENV   PROJ_DIR=/home/wetrade-producer
ENV   PYTHONPATH="${PROJ_DIR}:${PYTHONPATH}"

# Base packages
RUN   apt update && apt -y install cron
RUN   pip install -U pip setuptools

# Python Env Setup
RUN   pip install --quiet --no-cache-dir \
        # debug
        ipdb \
        # logger
        loguru \
        # send request to source
        requests \
        aiohttp \
        # send ws request to source
        websockets \
        # RocketMQ
        rocketmq-client-python \
        # DB
        cachetools \
        pymemcache

# RocketMQ
RUN   wget https://github.com/apache/rocketmq-client-cpp/releases/download/2.0.0/rocketmq-client-cpp-2.0.0.amd64.deb && \
        dpkg -i rocketmq-client-cpp-2.0.0.amd64.deb && rm -rf rocketmq-client-cpp-2.0.0.amd64.deb
