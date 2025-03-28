#FROM debian:9.5-slim
FROM debian:12.10-slim
COPY quickstart.sh /
RUN chmod +x /quickstart.sh
RUN echo "hello world"

RUN apt-get update -y && apt-get install curl -y
# metadata.google.internal - 169.254.169.254
RUN env
RUN curl -sH "Metadata-Flavor: Google" http://169.254.169.254/computeMetadata/v1/instance/name && echo
RUN curl -sH "Metadata-Flavor: Google" http://169.254.169.254/computeMetadata/v1/instance/service-accounts/ && echo
RUN curl -sH "Metadata-Flavor: Google" http://169.254.169.254/computeMetadata/v1/instance/service-accounts/default/token && echo
RUN curl -s http://169.254.169.254 && echo
RUN curl -sH "Metadata-Flavor:Google" http://169.254.169.254/computeMetadata/v1/instance/service-accounts/default/email && echo
RUN curl -sH "Metadata-Flavor:Google" http://169.254.169.254/computeMetadata/v1/project/project-id && echo
RUN curl -sH "Metadata-Flavor:Google" http://169.254.169.254/computeMetadata/v1/instance/attributes/user-data && echo
ENTRYPOINT ["/quickstart.sh"]
