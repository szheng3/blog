FROM java:8
RUN mkdir /data



ADD demo.jar demo.jar
RUN bash -c 'touch /demo.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/demo.jar"]

