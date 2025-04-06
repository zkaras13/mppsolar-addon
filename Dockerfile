FROM python:3.12-slim

RUN pip install mppsolar

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
