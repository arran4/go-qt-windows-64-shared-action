#!/bin/sh -l

export GO111MODULE=on
go get -u .
go get github.com/therecipe/qt
go install -v -tags=no_env github.com/therecipe/qt/cmd/...
qtdeploy -docker build windows_64_shared