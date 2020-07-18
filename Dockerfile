FROM golang
COPY entrypoint.sh /entrypoint.sh
RUN apt-get update && sudo apt-get -y install build-essential libglu1-mesa-dev libpulse-dev libglib2.0-dev  && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["/entrypoint.sh"]