FROM ubuntu:latest

RUN apt-get update
RUN apt-get install openssl libssl-dev cmake git g++ -y

WORKDIR /usr/app/src

CMD ["tail", "-f", "/dev/null"]