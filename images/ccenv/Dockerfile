# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0


# Building Docker image hyperledger/fabric-ccenv
# docker build --force-rm  -f images/ccenv/Dockerfile \
#         --build-arg GO_VER=1.14.4 \
#         --build-arg ALPINE_VER=3.12 \
#          \
#         -t hyperledger/fabric-ccenv ./images/ccenv
# Sending build context to Docker daemon  2.048kB
# Step 1/8 : ARG GO_VER
# Step 2/8 : ARG ALPINE_VER
# Step 3/8 : FROM golang:${GO_VER}-alpine${ALPINE_VER}
# 1.14.4-alpine3.12: Pulling from library/golang
# df20fa9351a1: Pull complete 
# ed8968b2872e: Pull complete 
# a92cc7c5fd73: Pull complete 
# 9e0cccf56431: Pull complete 
# cbe0275821fc: Pull complete 
# Digest: sha256:6042b9cfb4eb303f3bdcbfeaba79b45130d170939318de85ac5b9508cb6f0f7e
# Status: Downloaded newer image for golang:1.14.4-alpine3.12
#  ---> 3289bf11c284
# Step 4/8 : RUN apk add --no-cache       g++     gcc     git     musl-dev
#  ---> Running in 25d8257a9ab6
# fetch http://dl-cdn.alpinelinux.org/alpine/v3.12/main/x86_64/APKINDEX.tar.gz
# fetch http://dl-cdn.alpinelinux.org/alpine/v3.12/community/x86_64/APKINDEX.tar.gz
# (1/20) Upgrading musl (1.1.24-r8 -> 1.1.24-r10)
# (2/20) Installing libgcc (9.3.0-r2)
# (3/20) Installing libstdc++ (9.3.0-r2)
# (4/20) Installing binutils (2.34-r1)
# (5/20) Installing gmp (6.2.0-r0)
# (6/20) Installing isl (0.18-r0)
# (7/20) Installing libgomp (9.3.0-r2)
# (8/20) Installing libatomic (9.3.0-r2)
# (9/20) Installing libgphobos (9.3.0-r2)
# (10/20) Installing mpfr4 (4.0.2-r4)
# (11/20) Installing mpc1 (1.1.0-r1)
# (12/20) Installing gcc (9.3.0-r2)
# (13/20) Installing musl-dev (1.1.24-r10)
# (14/20) Installing libc-dev (0.7.2-r3)
# (15/20) Installing g++ (9.3.0-r2)
# (16/20) Installing nghttp2-libs (1.41.0-r0)
# (17/20) Installing libcurl (7.69.1-r3)
# (18/20) Installing expat (2.2.9-r1)
# (19/20) Installing pcre2 (10.35-r0)
# (20/20) Installing git (2.26.2-r0)
# Executing busybox-1.31.1-r16.trigger
# OK: 216 MiB in 34 packages
# Removing intermediate container 25d8257a9ab6
#  ---> 23e39167d9c7
# Step 5/8 : RUN mkdir -p /chaincode/output /chaincode/input
#  ---> Running in 8e3de5cba16a
# Removing intermediate container 8e3de5cba16a
#  ---> 4f1ba0e655fb
# Step 6/8 : RUN addgroup -g 500 chaincode && adduser -u 500 -D -h /home/chaincode -G chaincode chaincode
#  ---> Running in 39f3a3a7143b
# Removing intermediate container 39f3a3a7143b
#  ---> 5b7499c3ede9
# Step 7/8 : RUN chown -R chaincode:chaincode /chaincode
#  ---> Running in 901606b6e582
# Removing intermediate container 901606b6e582
#  ---> 72f717e1d580
# Step 8/8 : USER chaincode
#  ---> Running in 97886926cc6e
# Removing intermediate container 97886926cc6e
#  ---> 914ec32e104a
# Successfully built 914ec32e104a
# Successfully tagged hyperledger/fabric-ccenv:latest
# docker tag hyperledger/fabric-ccenv hyperledger/fabric-ccenv:2.2.1
# docker tag hyperledger/fabric-ccenv hyperledger/fabric-ccenv:2.2
# docker tag hyperledger/fabric-ccenv hyperledger/fabric-ccenv:amd64-2.2.1-snapshot-584710f



# ARG指令用来定义变量，这个变量是用在第一阶段（构建镜像——build），在docker build命令中以--build-arg a_name=a_value形式赋值。
# 在使用docker build 命令之前需要对其赋值。GO_VER ALPINE_VER在makefile中已经赋值。
ARG GO_VER
ARG ALPINE_VER
# 使用golang:1.14.4-alpine3.12作为基础镜像
FROM golang:${GO_VER}-alpine${ALPINE_VER}
# 使用apk包管理器安装g++ gcc git musl-dev
RUN apk add --no-cache \
	g++ \
	gcc \
	git \
	musl-dev

# 创建目录/chaincode/output /chaincode/input
RUN mkdir -p /chaincode/output /chaincode/input
# 添加chaincode用户组和chaincode用户
RUN addgroup -g 500 chaincode && adduser -u 500 -D -h /home/chaincode -G chaincode chaincode
# 修改目录的所属用户和组
RUN chown -R chaincode:chaincode /chaincode
# 指定运行容器时的用户名为chaincode
USER chaincode
