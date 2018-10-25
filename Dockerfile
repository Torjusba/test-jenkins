FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake

ENV SRC_PATH=/source/cpptest
ENV BUILD_PATH=${SRC_PATH}/build

RUN mkdir -p ${BUILD_PATH}

COPY . ${SRC_PATH}

WORKDIR ${BUILD_PATH}

RUN cmake .. && make -j

CMD ${BUILD_PATH}/cpp_docker