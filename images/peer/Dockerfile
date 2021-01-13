# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0

ARG BASE_TAR
FROM hyperledger/fabric-compile_golang:${BASE_TAR} as peer
ADD . $GOPATH/src/github.com/hyperledger/fabric
WORKDIR $GOPATH/src/github.com/hyperledger/fabric
ARG GO_TAGS
RUN make peer GO_TAGS=${GO_TAGS}

FROM hyperledger/fabric-orderandpeer_base:${BASE_TAR}
ENV FABRIC_CFG_PATH /etc/hyperledger/fabric
VOLUME /etc/hyperledger/fabric
VOLUME /var/hyperledger
COPY --from=peer /go/src/github.com/hyperledger/fabric/build/bin /usr/local/bin
COPY --from=peer /go/src/github.com/hyperledger/fabric/sampleconfig/msp ${FABRIC_CFG_PATH}/msp
COPY --from=peer /go/src/github.com/hyperledger/fabric/sampleconfig/core.yaml ${FABRIC_CFG_PATH}
EXPOSE 7051
CMD ["peer","node","start"]
