# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0

# Building Docker image hyperledger/fabric-baseos
# docker build --force-rm  -f images/baseos/Dockerfile \
#         --build-arg GO_VER=1.14.4 \
#         --build-arg ALPINE_VER=3.12 \
#          \
#         -t hyperledger/fabric-baseos ./images/baseos
# Sending build context to Docker daemon  2.048kB
# Step 1/6 : ARG GO_VER
# Step 2/6 : ARG ALPINE_VER
# Step 3/6 : FROM alpine:${ALPINE_VER} as base
# 3.12: Pulling from library/alpine
# 801bfaa63ef2: Pull complete 
# Digest: sha256:3c7497bf0c7af93428242d6176e8f7905f2201d8fc5861f45be7a346b5f23436
# Status: Downloaded newer image for alpine:3.12
#  ---> 389fef711851
# Step 4/6 : RUN apk add --no-cache tzdata
#  ---> Running in bcf0a4367d4f
# fetch http://dl-cdn.alpinelinux.org/alpine/v3.12/main/x86_64/APKINDEX.tar.gz
# fetch http://dl-cdn.alpinelinux.org/alpine/v3.12/community/x86_64/APKINDEX.tar.gz
# (1/1) Installing tzdata (2020f-r0)
# Executing busybox-1.31.1-r19.trigger
# OK: 9 MiB in 15 packages
# Removing intermediate container bcf0a4367d4f
#  ---> f4d47e41d8c3
# Step 5/6 : RUN addgroup -g 500 chaincode && adduser -u 500 -D -h /home/chaincode -G chaincode chaincode
#  ---> Running in c1137c66607a
# Removing intermediate container c1137c66607a
#  ---> 946653e891f8
# Step 6/6 : USER chaincode
#  ---> Running in 267af3f440e7
# Removing intermediate container 267af3f440e7
#  ---> f91da978e912
# Successfully built f91da978e912
# Successfully tagged hyperledger/fabric-baseos:latest
# docker tag hyperledger/fabric-baseos hyperledger/fabric-baseos:2.2.1
# docker tag hyperledger/fabric-baseos hyperledger/fabric-baseos:2.2
# docker tag hyperledger/fabric-baseos hyperledger/fabric-baseos:amd64-2.2.1-snapshot-584710f

# ARG指令用来定义变量，这个变量是用在第一阶段（构建镜像——build），在docker build命令中以--build-arg a_name=a_value形式赋值。
# 在使用docker build 命令之前需要对其赋值。GO_VER ALPINE_VER在makefile中已经赋值。
ARG GO_VER
ARG ALPINE_VER
# 使用alpine:3.12作为基础镜像
FROM alpine:${ALPINE_VER} as base
# 使用apk包管理器安装tzdata（Time Zone Database，简称tz或tzinfo，是一组表示地球上各地的时间历史的代码和数据，目前由IANA维护。）
RUN apk add --no-cache tzdata
# 添加chaincode用户组和chaincode用户
RUN addgroup -g 500 chaincode && adduser -u 500 -D -h /home/chaincode -G chaincode chaincode
# 指定运行容器时的用户名为chaincode
USER chaincode
