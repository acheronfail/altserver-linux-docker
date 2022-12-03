FROM alpine:3.15
RUN apk add avahi-dev zsh git curl wget g++ clang boost-static ninja boost-dev cmake make sudo bash vim libressl-dev util-linux-dev zlib-dev zlib-static unzip

WORKDIR /opt
COPY ./corecrypto.zip ./corecrypto.zip
COPY *.sh .

RUN ./download.sh
RUN ./corecrypto.sh
RUN ./cpprestsdk.sh
RUN ./libzip.sh
RUN ./altserver-linux.sh

CMD AltServer
