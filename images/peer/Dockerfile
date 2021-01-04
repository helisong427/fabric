# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0

# Building Docker image hyperledger/fabric-peer
# docker build --force-rm  -f images/peer/Dockerfile \
#         --build-arg GO_VER=1.14.4 \
#         --build-arg ALPINE_VER=3.12 \
#         --build-arg GO_TAGS= \
#         -t hyperledger/fabric-peer ./
# Sending build context to Docker daemon  43.06MB
# Step 1/21 : ARG GO_VER
# Step 2/21 : ARG ALPINE_VER
# Step 3/21 : FROM alpine:${ALPINE_VER} as peer-base
#  ---> 389fef711851
# Step 4/21 : RUN apk add --no-cache tzdata
#  ---> Using cache
#  ---> f4d47e41d8c3
# Step 5/21 : RUN echo 'hosts: files dns' > /etc/nsswitch.conf
#  ---> Running in a77894b38473
# Removing intermediate container a77894b38473
#  ---> b4e1befc4f45
# Step 6/21 : FROM golang:${GO_VER}-alpine${ALPINE_VER} as golang
#  ---> 3289bf11c284
# Step 7/21 : RUN apk add --no-cache      bash    gcc     git     make    musl-dev
#  ---> Running in f7bee70463d8
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
# Removing intermediate container f7bee70463d8
#  ---> cfa3bd3f9002
# Step 8/21 : ADD . $GOPATH/src/github.com/hyperledger/fabric
#  ---> 4889dfd24465
# Step 9/21 : WORKDIR $GOPATH/src/github.com/hyperledger/fabric
#  ---> Running in 563816ed09b9
# Removing intermediate container 563816ed09b9
#  ---> 13f3b39c8d5e
# Step 10/21 : FROM golang as peer
#  ---> 13f3b39c8d5e
# Step 11/21 : ARG GO_TAGS
#  ---> Running in 5f5d20a5cb00
# Removing intermediate container 5f5d20a5cb00
#  ---> c23213ca72be
# Step 12/21 : RUN make peer GO_TAGS=${GO_TAGS}
#  ---> Running in d860f9203c21
# Building build/bin/peer
# GOBIN=/go/src/github.com/hyperledger/fabric/build/bin go install -tags "" -ldflags "-X github.com/hyperledger/fabric/common/metadata.Version=2.2.1 -X github.com/hyperledger/fabric/common/metadata.CommitSHA=584710f -X github.com/hyperledger/fabric/common/metadata.BaseDockerLabel=org.hyperledger.fabric -X github.com/hyperledger/fabric/common/metadata.DockerNamespace=hyperledger" github.com/hyperledger/fabric/cmd/peer
# Removing intermediate container d860f9203c21
#  ---> 72049ab65214
# Step 13/21 : FROM peer-base
#  ---> b4e1befc4f45
# Step 14/21 : ENV FABRIC_CFG_PATH /etc/hyperledger/fabric
#  ---> Running in 93d90f837e70
# Removing intermediate container 93d90f837e70
#  ---> 5f0dc8350b44
# Step 15/21 : VOLUME /etc/hyperledger/fabric
#  ---> Running in 5b030c04362b
# Removing intermediate container 5b030c04362b
#  ---> dda3d717bb49
# Step 16/21 : VOLUME /var/hyperledger
#  ---> Running in c59d267469cc
# Removing intermediate container c59d267469cc
#  ---> fb9e9d4be518
# Step 17/21 : COPY --from=peer /go/src/github.com/hyperledger/fabric/build/bin /usr/local/bin
#  ---> f2b604acbae3
# Step 18/21 : COPY --from=peer /go/src/github.com/hyperledger/fabric/sampleconfig/msp ${FABRIC_CFG_PATH}/msp
#  ---> 2c888c94b4f1
# Step 19/21 : COPY --from=peer /go/src/github.com/hyperledger/fabric/sampleconfig/core.yaml ${FABRIC_CFG_PATH}
#  ---> 3dca897f2233
# Step 20/21 : EXPOSE 7051
#  ---> Running in e0f563c80662
# Removing intermediate container e0f563c80662
#  ---> 3f5b81eec48c
# Step 21/21 : CMD ["peer","node","start"]
#  ---> Running in 741f56bac1f8
# Removing intermediate container 741f56bac1f8
#  ---> cadeb5d6d599
# Successfully built cadeb5d6d599
# Successfully tagged hyperledger/fabric-peer:latest
# docker tag hyperledger/fabric-peer hyperledger/fabric-peer:2.2.1
# docker tag hyperledger/fabric-peer hyperledger/fabric-peer:2.2
# docker tag hyperledger/fabric-peer hyperledger/fabric-peer:amd64-2.2.1-snapshot-584710f




ARG GO_VER
ARG ALPINE_VER

FROM alpine:${ALPINE_VER} as peer-base
RUN apk add --no-cache tzdata
# set up nsswitch.conf for Go's "netgo" implementation
# - https://github.com/golang/go/blob/go1.9.1/src/net/conf.go#L194-L275
# - docker run --rm debian:stretch grep '^hosts:' /etc/nsswitch.conf
RUN echo 'hosts: files dns' > /etc/nsswitch.conf

ENV FABRIC_CFG_PATH /etc/hyperledger/fabric
VOLUME /etc/hyperledger/fabric
VOLUME /var/hyperledger
COPY ./build/bin/peer /usr/local/bin/peer
COPY ./sampleconfig/msp ${FABRIC_CFG_PATH}/msp
COPY ./sampleconfig/core.yaml ${FABRIC_CFG_PATH}
EXPOSE 7051
CMD ["peer","node","start"]

#FROM golang:${GO_VER}-alpine${ALPINE_VER} as golang
#RUN apk add --no-cache \
#	bash \
#	gcc \
#	git \
#	make \
#	musl-dev
#ADD . $GOPATH/src/github.com/hyperledger/fabric
#WORKDIR $GOPATH/src/github.com/hyperledger/fabric
#
#FROM golang as peer
#ARG GO_TAGS
#RUN make peer GO_TAGS=${GO_TAGS}
#
#FROM peer-base
#ENV FABRIC_CFG_PATH /etc/hyperledger/fabric
#VOLUME /etc/hyperledger/fabric
#VOLUME /var/hyperledger
#COPY --from=peer /go/src/github.com/hyperledger/fabric/build/bin /usr/local/bin
#COPY --from=peer /go/src/github.com/hyperledger/fabric/sampleconfig/msp ${FABRIC_CFG_PATH}/msp
#COPY --from=peer /go/src/github.com/hyperledger/fabric/sampleconfig/core.yaml ${FABRIC_CFG_PATH}
#EXPOSE 7051
#CMD ["peer","node","start"]
