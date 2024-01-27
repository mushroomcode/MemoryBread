FROM openjdk:8-jdk-alpine
MAINTAINER tcbCarBoy.com
COPY target/TcpBeseBuild-1.0-SNAPSHOT.jar  TcpBeseBuild-1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","TcpBeseBuild-1.0-SNAPSHOT.jar"]
