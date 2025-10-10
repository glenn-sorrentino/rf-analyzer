FROM python:3.11-bookworm
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    git ca-certificates curl \
    hackrf libhackrf0 libusb-1.0-0-dev \
    soapysdr-tools soapysdr-module-hackrf libsoapysdr-dev \
    libfftw3-dev libjpeg62-turbo-dev \
    libprotobuf-dev protobuf-compiler \
    rtl-433 lame \
    build-essential python3-dev pkg-config cmake \
    libcsdr0 libcsdr-dev \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app
RUN git clone https://github.com/jketterl/openwebrx.git . \
 && python -m venv /venv \
 && /venv/bin/pip install --upgrade pip \
 && /venv/bin/pip install . \
 && /venv/bin/pip install git+https://github.com/jketterl/pycsdr.git

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8073
ENTRYPOINT ["/entrypoint.sh"]
