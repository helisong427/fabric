# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0

# Building Docker image hyperledger/fabric-tools
# docker build --force-rm  -f images/tools/Dockerfile \
#         --build-arg GO_VER=1.14.4 \
#         --build-arg ALPINE_VER=3.12 \
#          \
#         -t hyperledger/fabric-tools ./
# Sending build context to Docker daemon  43.06MB
# Step 1/14 : ARG GO_VER
# Step 2/14 : ARG ALPINE_VER
# Step 3/14 : FROM golang:${GO_VER}-alpine${ALPINE_VER} as golang
#  ---> 3289bf11c284
# Step 4/14 : RUN apk add --no-cache      bash    gcc     git     make    musl-dev;
#  ---> Running in d55da20a687a
# fetch http://dl-cdn.alpinelinux.org/alpine/v3.12/main/x86_64/APKINDEX.tar.gz
# fetch http://dl-cdn.alpinelinux.org/alpine/v3.12/community/x86_64/APKINDEX.tar.gz
# (1/23) Upgrading musl (1.1.24-r8 -> 1.1.24-r10)
# (2/23) Installing ncurses-terminfo-base (6.2_p20200523-r0)
# (3/23) Installing ncurses-libs (6.2_p20200523-r0)
# (4/23) Installing readline (8.0.4-r0)
# (5/23) Installing bash (5.0.17-r0)
# Executing bash-5.0.17-r0.post-install
# (6/23) Installing libgcc (9.3.0-r2)
# (7/23) Installing libstdc++ (9.3.0-r2)
# (8/23) Installing binutils (2.34-r1)
# (9/23) Installing gmp (6.2.0-r0)
# (10/23) Installing isl (0.18-r0)
# (11/23) Installing libgomp (9.3.0-r2)
# (12/23) Installing libatomic (9.3.0-r2)
# (13/23) Installing libgphobos (9.3.0-r2)
# (14/23) Installing mpfr4 (4.0.2-r4)
# (15/23) Installing mpc1 (1.1.0-r1)
# (16/23) Installing gcc (9.3.0-r2)
# (17/23) Installing nghttp2-libs (1.41.0-r0)
# (18/23) Installing libcurl (7.69.1-r3)
# (19/23) Installing expat (2.2.9-r1)
# (20/23) Installing pcre2 (10.35-r0)
# (21/23) Installing git (2.26.2-r0)
# (22/23) Installing make (4.3-r0)
# (23/23) Installing musl-dev (1.1.24-r10)
# Executing busybox-1.31.1-r16.trigger
# OK: 159 MiB in 37 packages
# Removing intermediate container d55da20a687a
#  ---> cb6891b30354
# Step 5/14 : ADD . $GOPATH/src/github.com/hyperledger/fabric
#  ---> 25c8ec7d60cc
# Step 6/14 : WORKDIR $GOPATH/src/github.com/hyperledger/fabric
#  ---> Running in d3f1678bbd53
# Removing intermediate container d3f1678bbd53
#  ---> b4ed2388f983
# Step 7/14 : FROM golang as tools
#  ---> b4ed2388f983
# Step 8/14 : RUN make configtxgen configtxlator cryptogen peer discover idemixgen
#  ---> Running in d39f456f4dca
# Building build/bin/configtxgen
# GOBIN=/go/src/github.com/hyperledger/fabric/build/bin go install -tags "" -ldflags "-X github.com/hyperledger/fabric/common/metadata.Version=2.2.1 -X github.com/hyperledger/fabric/common/metadata.CommitSHA=584710f -X github.com/hyperledger/fabric/common/metadata.BaseDockerLabel=org.hyperledger.fabric -X github.com/hyperledger/fabric/common/metadata.DockerNamespace=hyperledger" github.com/hyperledger/fabric/cmd/configtxgen

# Building build/bin/configtxlator
# GOBIN=/go/src/github.com/hyperledger/fabric/build/bin go install -tags "" -ldflags "-X github.com/hyperledger/fabric/common/metadata.Version=2.2.1 -X github.com/hyperledger/fabric/common/metadata.CommitSHA=584710f -X github.com/hyperledger/fabric/common/metadata.BaseDockerLabel=org.hyperledger.fabric -X github.com/hyperledger/fabric/common/metadata.DockerNamespace=hyperledger" github.com/hyperledger/fabric/cmd/configtxlator
# Building build/bin/cryptogen
# GOBIN=/go/src/github.com/hyperledger/fabric/build/bin go install -tags "" -ldflags "-X github.com/hyperledger/fabric/common/metadata.Version=2.2.1 -X github.com/hyperledger/fabric/common/metadata.CommitSHA=584710f -X github.com/hyperledger/fabric/common/metadata.BaseDockerLabel=org.hyperledger.fabric -X github.com/hyperledger/fabric/common/metadata.DockerNamespace=hyperledger" github.com/hyperledger/fabric/cmd/cryptogen
# Building build/bin/peer
# GOBIN=/go/src/github.com/hyperledger/fabric/build/bin go install -tags "" -ldflags "-X github.com/hyperledger/fabric/common/metadata.Version=2.2.1 -X github.com/hyperledger/fabric/common/metadata.CommitSHA=584710f -X github.com/hyperledger/fabric/common/metadata.BaseDockerLabel=org.hyperledger.fabric -X github.com/hyperledger/fabric/common/metadata.DockerNamespace=hyperledger" github.com/hyperledger/fabric/cmd/peer
# Building build/bin/discover
# GOBIN=/go/src/github.com/hyperledger/fabric/build/bin go install -tags "" -ldflags "-X github.com/hyperledger/fabric/common/metadata.Version=2.2.1 -X github.com/hyperledger/fabric/common/metadata.CommitSHA=584710f -X github.com/hyperledger/fabric/common/metadata.BaseDockerLabel=org.hyperledger.fabric -X github.com/hyperledger/fabric/common/metadata.DockerNamespace=hyperledger" github.com/hyperledger/fabric/cmd/discover
# Building build/bin/idemixgen
# GOBIN=/go/src/github.com/hyperledger/fabric/build/bin go install -tags "" -ldflags "-X github.com/hyperledger/fabric/common/metadata.Version=2.2.1 -X github.com/hyperledger/fabric/common/metadata.CommitSHA=584710f -X github.com/hyperledger/fabric/common/metadata.BaseDockerLabel=org.hyperledger.fabric -X github.com/hyperledger/fabric/common/metadata.DockerNamespace=hyperledger" github.com/hyperledger/fabric/cmd/idemixgen
# Removing intermediate container d39f456f4dca
#  ---> fe4c015ca94d
# Step 9/14 : FROM golang:${GO_VER}-alpine
# 1.14.4-alpine: Pulling from library/golang
# Digest: sha256:6042b9cfb4eb303f3bdcbfeaba79b45130d170939318de85ac5b9508cb6f0f7e
# Status: Downloaded newer image for golang:1.14.4-alpine
#  ---> 3289bf11c284
# Step 10/14 : RUN apk add --no-cache     bash    git     jq      tzdata;
#  ---> Running in 2ff51b5815c2
# fetch http://dl-cdn.alpinelinux.org/alpine/v3.12/main/x86_64/APKINDEX.tar.gz
# fetch http://dl-cdn.alpinelinux.org/alpine/v3.12/community/x86_64/APKINDEX.tar.gz
# (1/12) Installing ncurses-terminfo-base (6.2_p20200523-r0)
# (2/12) Installing ncurses-libs (6.2_p20200523-r0)
# (3/12) Installing readline (8.0.4-r0)
# (4/12) Installing bash (5.0.17-r0)
# Executing bash-5.0.17-r0.post-install
# (5/12) Installing nghttp2-libs (1.41.0-r0)
# (6/12) Installing libcurl (7.69.1-r3)
# (7/12) Installing expat (2.2.9-r1)
# (8/12) Installing pcre2 (10.35-r0)
# (9/12) Installing git (2.26.2-r0)
# (10/12) Installing oniguruma (6.9.5-r2)
# (11/12) Installing jq (1.6-r1)
# (12/12) Installing tzdata (2020f-r0)
# Executing busybox-1.31.1-r16.trigger
# OK: 28 MiB in 27 packages
# Removing intermediate container 2ff51b5815c2
#  ---> a6ceecc55852
# Step 11/14 : ENV FABRIC_CFG_PATH /etc/hyperledger/fabric
#  ---> Running in 31bc50052cf0
# Removing intermediate container 31bc50052cf0
#  ---> a157c5e91719
# Step 12/14 : VOLUME /etc/hyperledger/fabric
#  ---> Running in 49360c4f9166
# Removing intermediate container 49360c4f9166
#  ---> b0f35f6fc27e
# Step 13/14 : COPY --from=tools /go/src/github.com/hyperledger/fabric/build/bin /usr/local/bin
#  ---> 337931100c55
# Step 14/14 : COPY --from=tools /go/src/github.com/hyperledger/fabric/sampleconfig ${FABRIC_CFG_PATH}
#  ---> e431c3007f91
# Successfully built e431c3007f91
# Successfully tagged hyperledger/fabric-tools:latest
# docker tag hyperledger/fabric-tools hyperledger/fabric-tools:2.2.1
# docker tag hyperledger/fabric-tools hyperledger/fabric-tools:2.2
# docker tag hyperledger/fabric-tools hyperledger/fabric-tools:amd64-2.2.1-snapshot-584710f


ARG GO_VER
ARG ALPINE_VER
#FROM golang:${GO_VER}-alpine${ALPINE_VER} as golang
#
#RUN apk add --no-cache \
#	bash \
#	gcc \
#	git \
#	make \
#	musl-dev;
#
#ADD . $GOPATH/src/github.com/hyperledger/fabric
#WORKDIR $GOPATH/src/github.com/hyperledger/fabric
#
#FROM golang as tools
#RUN make configtxgen configtxlator cryptogen peer discover idemixgen

FROM alpine:${ALPINE_VER} as base
# 使用apk包管理器安装tzdata（Time Zone Database，简称tz或tzinfo，是一组表示地球上各地的时间历史的代码和数据，目前由IANA维护。）
RUN apk add --no-cache tzdata

ENV FABRIC_CFG_PATH /etc/hyperledger/fabric
VOLUME /etc/hyperledger/fabric
COPY build/bin/configtxgen /usr/local/bin/configtxgen
COPY build/bin/configtxlator /usr/local/bin/configtxlator
COPY build/bin/peer /usr/local/bin/peer
COPY build/bin/cryptogen /usr/local/bin/cryptogen
COPY build/bin/discover /usr/local/bin/discover
COPY build/bin/idemixgen /usr/local/bin/idemixgen
COPY sampleconfig ${FABRIC_CFG_PATH}
