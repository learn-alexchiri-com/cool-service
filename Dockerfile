# build stage
FROM adoptopenjdk/openjdk11:x86_64-debianslim-jdk-11.0.7_10 as build
ENV MAVEN_VERSION="3.6.3"
COPY . /root/cool-service
RUN curl -o /tmp/apache-maven-${MAVEN_VERSION}-bin.tar.gz http://apache.mirrors.spacedump.net/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  && tar -xzvf /tmp/apache-maven-${MAVEN_VERSION}-bin.tar.gz -C /opt
WORKDIR /root/cool-service
RUN /opt/apache-maven-${MAVEN_VERSION}/bin/mvn clean package

# run stage
FROM adoptopenjdk/openjdk11:x86_64-debianslim-jre-11.0.7_10
COPY --from=build /root/cool-service/target/cool-service-1.0-SNAPSHOT.jar /root/cool-service/cool-service-1.0-SNAPSHOT.jar
ADD ./config.yml /root/cool-service/config.yaml
CMD java -jar /root/cool-service/cool-service-1.0-SNAPSHOT.jar server /root/cool-service/config.yaml
EXPOSE 8080