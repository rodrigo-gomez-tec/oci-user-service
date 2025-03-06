FROM openjdk:17-jdk-slim

WORKDIR /oci-microservice

COPY target/*jar oci-microservice.jar

COPY /src/main/resources/Wallet_javadev101 /oci-microservice/Wallet_javadev101

ENV TNS_ADMIN=/oci-microservice/Wallet_javadev101

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "oci-microservice.jar" ]