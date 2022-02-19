FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install openssl libssl-dev cmake g++ 

WORKDIR /usr/app/src/build

CMD cmake .. && cmake --build .