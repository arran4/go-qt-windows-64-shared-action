#!/bin/sh -l

export GO111MODULE=on
go get -u .
exec qtdeploy -docker build windows_64_shared