#!/bin/sh -l

export GO111MODULE=on
go get -v github.com/therecipe/qt && go install -v -tags=no_env github.com/therecipe/qt/cmd/... && go mod vendor && git clone https://github.com/therecipe/env_linux_amd64_513.git vendor/github.com/therecipe/env_linux_amd64_513 && $(go env GOPATH)/bin/qtsetup
go get -u .
exec qtdeploy -docker build windows_64_shared
