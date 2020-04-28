FROM adoptopenjdk/openjdk11:x86_64-debianslim-jdk-11.0.6_10-slim

ADD target/cool-service-1.0-SNAPSHOT.jar /data/cool-service-1.0-SNAPSHOT.jar
ADD ./config.yml /data/config.yaml

CMD java -jar /data/cool-service-1.0-SNAPSHOT.jar server /data/config.yaml
EXPOSE 8080