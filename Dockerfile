FROM alpine:latest

RUN apk update && \
	apk add git wget openjdk8 maven

RUN cd opt; \
  git clone https://github.com/christianscheible/qsample.git; \
  cd qsample; \
  mvn compile; \
  mvn package

RUN wget https://github.com/christianscheible/qsample/releases/download/0.1/models.tar.gz; \
  tar xzfv models.tar.gz; \
  rm models.tar.gz

WORKDIR /opt/qsample
