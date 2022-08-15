FROM alpine
COPY quickstart.sh /
RUN chmod ug+x /quickstart.sh
CMD ["/quickstart.sh"]
