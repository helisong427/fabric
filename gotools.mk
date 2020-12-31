# Copyright IBM Corp All Rights Reserved.
# Copyright London Stock Exchange Group All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0
# gotools.mk里面定义的是工具执行程序

# GOTOOLS为工具执行程序列表
GOTOOLS = counterfeiter ginkgo gocov gocov-xml goimports golint misspell mockery protoc-gen-go
# BUILD_DIR为编译目录（这里是多余的指定编译目录，没有使用）
BUILD_DIR ?= build
# GOTOOLS_BINDIR工具存储目录，就是GOPATH/bin
GOTOOLS_BINDIR ?= $(shell go env GOPATH)/bin

# go tool->path mapping
# 指定工具所对应仓库的地址
go.fqp.counterfeiter := github.com/maxbrunsfeld/counterfeiter/v6
go.fqp.ginkgo        := github.com/onsi/ginkgo/ginkgo
go.fqp.gocov         := github.com/axw/gocov/gocov
go.fqp.gocov-xml     := github.com/AlekSi/gocov-xml
go.fqp.goimports     := golang.org/x/tools/cmd/goimports
go.fqp.golint        := golang.org/x/lint/golint
go.fqp.misspell      := github.com/client9/misspell/cmd/misspell
go.fqp.mockery       := github.com/vektra/mockery/cmd/mockery
go.fqp.protoc-gen-go := github.com/golang/protobuf/protoc-gen-go


# $(patsubst 原模式， 目标模式， 文件列表)
#
.PHONY: gotools-install
gotools-install: $(patsubst %,$(GOTOOLS_BINDIR)/%, $(GOTOOLS))

.PHONY: gotools-clean
gotools-clean:

# Default rule for gotools uses the name->path map for a generic 'go get' style build
# $(abspath $(GOTOOLS_BINDIR)) abspath是得到绝对路径
# gotool.% 就是下载一个工具库，并安装到GOTOOLS_BINDIR中
# $(eval TOOL = ${subst gotool.,,${@}})  得到工具程序名存入TOOL中
# 最后一句是进入tools目录，指定GO111MODULE=on和GOBIN，进行安装一个工具
gotool.%:
	$(eval TOOL = ${subst gotool.,,${@}})
	@echo "Building ${go.fqp.${TOOL}} -> $(TOOL)"
	@cd tools && GO111MODULE=on GOBIN=$(abspath $(GOTOOLS_BINDIR)) go install ${go.fqp.${TOOL}}




# $(subst FROM,TO,TEXT),即将TEXT中的东西从FROM变为TO
# 对目标（$(GOTOOLS_BINDIR)/%）进行展开，去掉目录得到可执行程序名存入TOOL中
# make 定义了很多默认变量，像常用的命令或者是命令选项之类的，什么CC啊，CFLAGS啊之类。${MAKE} 就是预设的 make 这个命令的名称（或者路径）。
# @$(MAKE) -f gotools.mk gotool.$(TOOL) 这一句就是再次make执行gotools.mk中的gotool.$(TOOL)目标
$(GOTOOLS_BINDIR)/%:
	$(eval TOOL = ${subst $(GOTOOLS_BINDIR)/,,${@}})
	@echo $(TOOL)
	@$(MAKE) -f gotools.mk gotool.$(TOOL)
