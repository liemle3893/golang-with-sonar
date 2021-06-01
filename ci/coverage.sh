#!/bin/sh
set -eu
go test -coverprofile=coverage.out ./...

