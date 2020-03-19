FROM amazoncorretto:8
COPY apache-karaf-4.2.8/ /apache-karaf-4.2.8
RUN yum update -y && yum upgrade -y

# Setup repository & Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
RUN kubectl version --client

EXPOSE 8181 5701 54327 8080
WORKDIR /apache-karaf-4.2.8
CMD ["/apache-karaf-4.2.8/start.sh"]
