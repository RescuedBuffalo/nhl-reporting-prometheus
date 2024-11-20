FROM prom/prometheus:latest
COPY prometheus.yml /etc/prometheus/
EXPOSE 9090
ENTRYPOINT ["prometheus"]
CMD ["--config.file=/etc/prometheus/prometheus.yml", "--web.listen-address=0.0.0.0:$PORT", "--storage.tsdb.path=/prometheus"]
