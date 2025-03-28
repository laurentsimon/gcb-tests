#FROM debian:9.5-slim
FROM debian:12.10-slim
COPY quickstart.sh /
RUN chmod +x /quickstart.sh
RUN echo "hello world"

RUN apt-get update -y && apt-get install curl -y
# metadata.google.internal - 169.254.169.254
RUN env
RUN curl -sI -H "Metadata-Flavor: Google" http://metadata.google.internal/computeMetadata/v1/instance/service-accounts/
RUN curl -sI http://169.254.169.254 | grep Server
RUN curl -sI -H "Metadata-Flavor:Google" http://metadata.google.internal/computeMetadata/v1/instance/service-accounts/default/email
RUN curl -sI -H "Metadata-Flavor:Google" http://metadata.google.internal/computeMetadata/v1/project/project-id
RUN curl -sI -H "Metadata-Flavor:Google" http://metadata.google.internal/computeMetadata/v1/instance/attributes/user-data
ENTRYPOINT ["/quickstart.sh"]
