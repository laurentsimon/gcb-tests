FROM alpine
COPY quickstart.sh /
chmod ug+x /quickstart.sh
CMD ["/quickstart.sh"]
