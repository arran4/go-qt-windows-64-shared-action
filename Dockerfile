FROM golang
COPY entrypoint.sh /entrypoint.sh
RUN apt-get update \
    && apt-get -y install build-essential libglu1-mesa-dev libpulse-dev libglib2.0-dev \
    && rm -rf /var/lib/apt/lists/*
RUN     go get github.com/therecipe/qt github.com/sirupsen/logrus golang.org/x/tools/imports \
    && go install -v -tags=no_env github.com/therecipe/qt/cmd/qtdeploy
ENV PATH="${HOME}/go/bin/:${PATH}"
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
