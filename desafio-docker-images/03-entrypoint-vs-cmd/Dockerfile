FROM debian:bullseye-slim
RUN apt-get update && apt-get install -y \
    ffmpeg \
    bash \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY convert.sh .
RUN chmod +x convert.sh
ENTRYPOINT ["./convert.sh"]
CMD ["input.mp4", "avi"]