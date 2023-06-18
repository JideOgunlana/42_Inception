FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y python3.9 python3-pip && \
    apt-get clean

WORKDIR /app

COPY index.html .
COPY script.js .
COPY style.css .

EXPOSE 8000

CMD ["python3.9", "-m", "http.server", "8000"]

