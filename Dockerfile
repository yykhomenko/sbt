FROM openjdk:11 AS packager

ENV SBT_VERSION 1.5.2

RUN curl -L -o sbt-$SBT_VERSION.zip https://github.com/sbt/sbt/releases/download/v$SBT_VERSION/sbt-$SBT_VERSION.zip
RUN unzip sbt-$SBT_VERSION.zip -d opt

WORKDIR /tmp
RUN /opt/sbt/bin/sbt sbtVersion
