FROM python:3.12-slim

RUN apt-get update && \
    apt-get install -y git && \
    pip install mpp-solar

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
