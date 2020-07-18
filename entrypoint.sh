#!/bin/sh -l

export GO111MODULE=on
go get -u .
go get github.com/therecipe/qt
go install -v -tags=no_env github.com/therecipe/qt/cmd/qtdeploy
#go install -v -tags=no_env github.com/therecipe/qt/cmd/qtmoc
#go install -v -tags=no_env github.com/therecipe/qt/cmd/qtrcc
#go install -v -tags=no_env github.com/therecipe/qt/cmd/qtsetup
exec qtdeploy -docker build windows_64_shared