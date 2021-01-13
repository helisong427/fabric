# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0

ARG GO_VER
ARG ALPINE_VER

FROM golang:${GO_VER}-alpine${ALPINE_VER} as golang
RUN apk add --no-cache \
	gcc \
	musl-dev \
	git \
	bash \
	make;


