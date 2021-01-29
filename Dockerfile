FROM alpine:3.13

RUN apk add --no-cache py3-faker

WORKDIR /faker
COPY apache-fake-log-gen.py /faker
ENTRYPOINT ["python3", "apache-fake-log-gen.py"]
CMD ["-n 100"]
