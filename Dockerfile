FROM rave/developer
VOLUME /tmp
ADD build/libs/*.jar /development/workspace/app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 8761
ENTRYPOINT ["java","-Djava.security.egd=fidocker e:/dev/./urandom","-jar","/development/workspace/app.jar"]