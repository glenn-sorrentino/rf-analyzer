FROM python:3.11-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    git ca-certificates curl \
    hackrf libhackrf0 \
    soapysdr-tools soapysdr-module-hackrf libsoapysdr-dev \
    libfftw3-dev libjpeg62-turbo-dev \
    libprotobuf-dev protobuf-compiler \
    rtl-433 lame \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash app
USER app
WORKDIR /app

RUN git clone https://github.com/jketterl/openwebrx.git . \
 && python -m venv .venv \
 && . .venv/bin/activate \
 && pip install --upgrade pip \
 && pip install .

COPY --chown=app:app entrypoint.sh /entrypoint.sh
EXPOSE 8073
ENTRYPOINT ["/entrypoint.sh"]
