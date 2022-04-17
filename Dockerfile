FROM ubuntu:20.04
WORKDIR /opt
RUN apt-get update && apt-get install -y default-jdk && apt-get install -y maven && apt-get install -y git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /opt/boxfuse-sample-java-war-hello
RUN mvn package