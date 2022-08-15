FROM debian:9.5-slim
COPY quickstart.sh /
RUN chmod +x /quickstart.sh
ENTRYPOINT ["/quickstart.sh"]
