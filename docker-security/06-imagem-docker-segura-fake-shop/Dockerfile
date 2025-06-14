FROM python:3.11.0
WORKDIR /application
RUN addgroup --gid 2001 dev && adduser --disabled-password --gecos '' --uid 2001 --ingroup dev dev
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . /application
RUN chmod +x /application/entrypoint.sh
ENV PROMETHEUS_MULTIPROC_DIR=/tmp/metrics
RUN mkdir -p /tmp/metrics 
EXPOSE 5000
USER dev
CMD ["/application/entrypoint.sh"]