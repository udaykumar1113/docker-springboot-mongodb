FROM centos

RUN yum install -y java

VOLUME /tmp

ADD /target/spring-boot-mongodb-0.0.1-SNAPSHOT.jar mongo-webapp.jar

RUN sh -c 'touch /myapp.jar'

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/mongo-webapp.jar"]