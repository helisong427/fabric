# Copyright London Stock Exchange Group All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0

# 下面逻辑是判断是否有相应变量（make文件中定义或者系统环境的变量）
ifneq ($(http_proxy),)
DOCKER_BUILD_FLAGS+=--build-arg 'http_proxy=$(http_proxy)'
endif
ifneq ($(https_proxy),)
DOCKER_BUILD_FLAGS+=--build-arg 'https_proxy=$(https_proxy)'
endif
ifneq ($(HTTP_PROXY),)
DOCKER_BUILD_FLAGS+=--build-arg 'HTTP_PROXY=$(HTTP_PROXY)'
endif
ifneq ($(HTTPS_PROXY),)
DOCKER_BUILD_FLAGS+=--build-arg 'HTTPS_PROXY=$(HTTPS_PROXY)'
endif
ifneq ($(no_proxy),)
DOCKER_BUILD_FLAGS+=--build-arg 'no_proxy=$(no_proxy)'
endif
ifneq ($(NO_PROXY),)
DOCKER_BUILD_FLAGS+=--build-arg 'NO_PROXY=$(NO_PROXY)'
endif

# DBUILD为docker编译的命令
DBUILD = docker build --force-rm $(DOCKER_BUILD_FLAGS)

# DOCKER_NS为docker的命令空间
DOCKER_NS ?= hyperledger
# DOCKER_TAG为docker的镜像标记名（打标记使用），如：amd64-2.2.1-snapshot-344fda602
DOCKER_TAG=$(ARCH)-$(PROJECT_VERSION)
# BASE_DOCKER_LABEL为docker的基础标签名
BASE_DOCKER_LABEL=org.hyperledger.fabric

#
# What is a .dummy file?
#
# Make is designed to work with files.  It uses the presence (or lack thereof)
# and timestamps of files when deciding if a given target needs to be rebuilt.
# Docker containers throw a wrench into the works because the output of docker
# builds do not translate into standard files that makefile rules can evaluate.
# Therefore, we have to fake it.  We do this by constructioning our rules such
# as
#       my-docker-target/.dummy:
#              docker build ...
#              touch $@
#
# If the docker-build succeeds, the touch operation creates/updates the .dummy
# file.  If it fails, the touch command never runs.  This means the .dummy
# file follows relatively 1:1 with the underlying container.
#
# This isn't perfect, however.  For instance, someone could delete a docker
# container using docker-rmi outside of the build, and make would be fooled
# into thinking the dependency is statisfied when it really isn't.  This is
# our closest approximation we can come up with.
#
# As an aside, also note that we incorporate the version number in the .dummy
# file to differentiate different tags to fix FAB-1145
#

# 由于make是通过判断文件是否被修改和时间戳来判断是否需要进行重新构建。但是make操作了docker，docker是否
# build成功并没有修改文件，这里就在docker构建镜像的时候进行touch一个.dummy文件来记录docker镜像是否构建
# 成功。注意：使用docker rmi 删除镜像后无法被make感知，不要做这样的操作，请使用make clean。
DUMMY = .dummy-$(DOCKER_TAG)
