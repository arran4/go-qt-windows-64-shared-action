#!/bin/bash -ex

go mod vendor
git clone https://github.com/therecipe/env_linux_amd64_513.git vendor/github.com/therecipe/env_linux_amd64_513
$(go env GOPATH)/bin/qtsetup
exec qtdeploy -docker build windows_64_shared
