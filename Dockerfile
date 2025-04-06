FROM python:3.12-slim

RUN pip install mpp-solar

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
