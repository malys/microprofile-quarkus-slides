FROM registry.access.redhat.com/ubi8/ubi-minimal
COPY ./demo-runner /application
EXPOSE 8080
ENTRYPOINT ["/application", "-Dquarkus.http.host=0.0.0.0","-Dquarkus.http.port=8080"]