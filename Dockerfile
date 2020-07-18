FROM golang
COPY entrypoint.sh /entrypoint.sh
RUN apt-get update \
    && apt-get -y install build-essential libglu1-mesa-dev libpulse-dev libglib2.0-dev \
    && rm -rf /var/lib/apt/lists/* \
    && GO111MODULE=off go get github.com/therecipe/qt \
    && GO111MODULE=off go install -v -tags=no_env github.com/therecipe/qt/cmd/qtdeploy
ENV PATH="${HOME}/go/bin/:${PATH}"
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
