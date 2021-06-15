FROM ubuntu:20.10 AS base
WORKDIR /tmp
COPY jdk-7u80-linux-x64.tar.gz .
RUN mkdir jdk
RUN tar -xzf jdk-7u80-linux-x64.tar.gz -C jdk

FROM ubuntu:20.10
COPY --from=base /tmp/jdk /usr/local
ENV JAVA_HOME=/usr/local/jdk1.7.0_80
ENV PATH=$PATH:$JAVA_HOME/bin