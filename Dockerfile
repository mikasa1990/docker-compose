FROM tomcat:9.0
RUN apt-get update && apt-get install -y maven && apt-get install -y git
WORKDIR /opt
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /opt/boxfuse-sample-java-war-hello
RUN mvn package