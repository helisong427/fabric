# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0

ARG GO_VER
ARG ALPINE_VER

FROM golang:${GO_VER}-alpine
# git is required to support `go list -m`
RUN apk add --no-cache \
	bash \
	git \
	jq \
	tzdata;

