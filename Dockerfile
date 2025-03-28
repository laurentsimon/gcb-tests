FROM debian:9.5-slim
COPY quickstart.sh /
RUN chmod +x /quickstart.sh
RUN echo "hello world"
ENTRYPOINT ["/quickstart.sh"]
