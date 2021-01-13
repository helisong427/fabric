# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0

ARG BASE_TAR
FROM hyperledger/fabric-compile_golang:${BASE_TAR} as tools
ADD . $GOPATH/src/github.com/hyperledger/fabric
WORKDIR $GOPATH/src/github.com/hyperledger/fabric
RUN make configtxgen configtxlator cryptogen peer discover idemixgen

FROM hyperledger/fabric-tools_base:${BASE_TAR}

ENV FABRIC_CFG_PATH /etc/hyperledger/fabric
VOLUME /etc/hyperledger/fabric
COPY --from=tools /go/src/github.com/hyperledger/fabric/build/bin /usr/local/bin
COPY --from=tools /go/src/github.com/hyperledger/fabric/sampleconfig ${FABRIC_CFG_PATH}
