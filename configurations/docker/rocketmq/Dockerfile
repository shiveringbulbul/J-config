FROM  alpine:latest

RUN   apt-get update
RUN   wget https://github.com/apache/rocketmq-client-cpp/releases/download/2.0.0/rocketmq-client-cpp-2.0.0.amd64.deb && \
				dpkg -i rocketmq-client-cpp-2.0.0.amd64.deb && rm -rf rocketmq-client-cpp-2.0.0.amd64.deb
