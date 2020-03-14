FROM amazoncorretto:8
COPY apache-karaf-4.2.8/ /apache-karaf-4.2.8
EXPOSE 8181
CMD ./apache-karaf-4.2.8/bin/start
