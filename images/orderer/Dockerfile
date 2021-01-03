# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0


# Building Docker image hyperledger/fabric-orderer
# docker build --force-rm  -f images/orderer/Dockerfile \
#         --build-arg GO_VER=1.14.4 \
#         --build-arg ALPINE_VER=3.12 \
#         --build-arg GO_TAGS= \
#         -t hyperledger/fabric-orderer ./
# Sending build context to Docker daemon  43.06MB
# Step 1/22 : ARG GO_VER
# Step 2/22 : ARG ALPINE_VER
# Step 3/22 : FROM alpine:${ALPINE_VER} as base
#  ---> 389fef711851
# Step 4/22 : RUN apk add --no-cache tzdata
#  ---> Using cache
#  ---> f4d47e41d8c3
# Step 5/22 : RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
#  ---> Running in 8f24418850fb
# Removing intermediate container 8f24418850fb
#  ---> 3359d5fe10e4
# Step 6/22 : FROM golang:${GO_VER}-alpine${ALPINE_VER} as golang
#  ---> 3289bf11c284
# Step 7/22 : RUN apk add --no-cache      gcc     musl-dev        git     bash    make;
#  ---> Running in 4c725ae261d7
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
# Removing intermediate container 4c725ae261d7
#  ---> 9ee5171cac8a
# Step 8/22 : ADD . $GOPATH/src/github.com/hyperledger/fabric
#  ---> 087267861381
# Step 9/22 : WORKDIR $GOPATH/src/github.com/hyperledger/fabric
#  ---> Running in 9b1223b56954
# Removing intermediate container 9b1223b56954
#  ---> 50517918712d
# Step 10/22 : FROM golang as orderer
#  ---> 50517918712d
# Step 11/22 : ARG GO_TAGS
#  ---> Running in 0bd6ceb23295
# Removing intermediate container 0bd6ceb23295
#  ---> 7526ae2588a8
# Step 12/22 : RUN make orderer GO_TAGS=${GO_TAGS}
#  ---> Running in 58ad3ee93054
# Building build/bin/orderer
# GOBIN=/go/src/github.com/hyperledger/fabric/build/bin go install -tags "" -ldflags "-X github.com/hyperledger/fabric/common/metadata.Version=2.2.1 -X github.com/hyperledger/fabric/common/metadata.CommitSHA=584710f -X github.com/hyperledger/fabric/common/metadata.BaseDockerLabel=org.hyperledger.fabric -X github.com/hyperledger/fabric/common/metadata.DockerNamespace=hyperledger" github.com/hyperledger/fabric/cmd/orderer
# Removing intermediate container 58ad3ee93054
#  ---> 48cd56af3fa5
# Step 13/22 : FROM base
#  ---> 3359d5fe10e4
# Step 14/22 : ENV FABRIC_CFG_PATH /etc/hyperledger/fabric
#  ---> Running in cbd6bd44fe49
# Removing intermediate container cbd6bd44fe49
#  ---> 11cf037b10f4
# Step 15/22 : VOLUME /etc/hyperledger/fabric
#  ---> Running in 47d27a596e39
# Removing intermediate container 47d27a596e39
#  ---> 4493ac610531
# Step 16/22 : VOLUME /var/hyperledger
#  ---> Running in ab298a66e373
# Removing intermediate container ab298a66e373
#  ---> 7f9dc2c7d5b8
# Step 17/22 : COPY --from=orderer /go/src/github.com/hyperledger/fabric/build/bin /usr/local/bin
#  ---> 60cd75320dbe
# Step 18/22 : COPY --from=orderer /go/src/github.com/hyperledger/fabric/sampleconfig/msp ${FABRIC_CFG_PATH}/msp
#  ---> 94e124a3f3b3
# Step 19/22 : COPY --from=orderer /go/src/github.com/hyperledger/fabric/sampleconfig/orderer.yaml ${FABRIC_CFG_PATH}
#  ---> 18d997d04d75
# Step 20/22 : COPY --from=orderer /go/src/github.com/hyperledger/fabric/sampleconfig/configtx.yaml ${FABRIC_CFG_PATH}
#  ---> 6ea7d7b0d434
# Step 21/22 : EXPOSE 7050
#  ---> Running in c488876572e0
# Removing intermediate container c488876572e0
#  ---> 25c7452642fd
# Step 22/22 : CMD ["orderer"]
#  ---> Running in e248c200694b
# Removing intermediate container e248c200694b
#  ---> c11d21e1e8c0
# Successfully built c11d21e1e8c0
# Successfully tagged hyperledger/fabric-orderer:latest
# docker tag hyperledger/fabric-orderer hyperledger/fabric-orderer:2.2.1
# docker tag hyperledger/fabric-orderer hyperledger/fabric-orderer:2.2
# docker tag hyperledger/fabric-orderer hyperledger/fabric-orderer:amd64-2.2.1-snapshot-584710f












# ARG指令用来定义变量，这个变量是用在第一阶段（构建镜像——build），在docker build命令中以--build-arg a_name=a_value形式赋值。
# 在使用docker build 命令之前需要对其赋值。GO_VER ALPINE_VER在makefile中已经赋值。
ARG GO_VER
ARG ALPINE_VER
# 使用alpine:3.12作为基础镜像
FROM alpine:${ALPINE_VER} as base
# 使用apk包管理器安装tzdata（Time Zone Database，简称tz或tzinfo，是一组表示地球上各地的时间历史的代码和数据，目前由IANA维护。）
RUN apk add --no-cache tzdata
# set up nsswitch.conf for Go's "netgo" implementation
# - https://github.com/golang/go/blob/go1.9.1/src/net/conf.go#L194-L275
# - docker run --rm debian:stretch grep '^hosts:' /etc/nsswitch.conf
# 判断/etc/nsswitch.conf不存在则新建，执行此命令：echo 'hosts: files dns' > /etc/nsswitch.conf
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf

# 使用golang:1.14.4-alpine3.12作为基础镜像
FROM golang:${GO_VER}-alpine${ALPINE_VER} as golang

# 使用apk包管理器安装gcc musl-dev git bash make
RUN apk add --no-cache \
	gcc \
	musl-dev \
	git \
	bash \
	make;

# 把当前的目录内容拷贝到容器中的$GOPATH/src/github.com/hyperledger/fabric目录
ADD . $GOPATH/src/github.com/hyperledger/fabric
# 指定工作目录。用 WORKDIR 指定的工作目录，会在构建镜像的每一层中都存在。（WORKDIR 指定的工作目录，必须是提前创建好的）。
# docker build 构建镜像过程中的，每一个 RUN 命令都是新建的一层。只有通过 WORKDIR 创建的目录才会一直存在。
WORKDIR $GOPATH/src/github.com/hyperledger/fabric

# 以上面的golang镜像作为基础镜像创建orderer镜像，在此orderer镜像中编译orderer
FROM golang as orderer
# 定义GO_TAGS变量
ARG GO_TAGS
# 在容器中编译orderer
RUN make orderer GO_TAGS=${GO_TAGS}

# 再次以base为基础镜像
FROM base
# 设置FABRIC_CFG_PATH环境
ENV FABRIC_CFG_PATH /etc/hyperledger/fabric

# 定义匿名数据卷（避免重要的数据，因容器重启而丢失；避免容器不断变大）。在启动容器时忘记挂载数据卷，会自动挂载到匿名卷。
# 只设置了容器的挂载点，并没有指定关联的主机目录。这时docker会自动绑定主机上的一个目录。通过docker inspect 命令可以查看到。
VOLUME /etc/hyperledger/fabric
VOLUME /var/hyperledger

#  从orderer镜像中拷贝数据到当前镜像中
COPY --from=orderer /go/src/github.com/hyperledger/fabric/build/bin /usr/local/bin
COPY --from=orderer /go/src/github.com/hyperledger/fabric/sampleconfig/msp ${FABRIC_CFG_PATH}/msp
COPY --from=orderer /go/src/github.com/hyperledger/fabric/sampleconfig/orderer.yaml ${FABRIC_CFG_PATH}
COPY --from=orderer /go/src/github.com/hyperledger/fabric/sampleconfig/configtx.yaml ${FABRIC_CFG_PATH}
EXPOSE 7050
CMD ["orderer"]
