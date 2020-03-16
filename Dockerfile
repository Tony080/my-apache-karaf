FROM amazoncorretto:8
COPY apache-karaf-4.2.8/ /apache-karaf-4.2.8
EXPOSE 8181 5701 54327
WORKDIR /apache-karaf-4.2.8
CMD ["/apache-karaf-4.2.8/bin/karaf", "server"]
