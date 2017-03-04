FROM node:latest

MAINTAINER Claick Assunção de Oliveira "claick.cao@gmail.com"

RUN apt-get update && apt-get -y install unzip libaio1 && apt-get clean

RUN mkdir -p /opt/oracle/

COPY instantclient-basic-linux.x64-12.2.0.1.0.zip /opt/oracle/
COPY instantclient-sdk-linux.x64-12.2.0.1.0.zip /opt/oracle/

RUN unzip /opt/oracle/instantclient-basic-linux.x64-12.2.0.1.0.zip -d /opt/oracle && \
    unzip /opt/oracle/instantclient-sdk-linux.x64-12.2.0.1.0.zip -d /opt/oracle && \
    mv /opt/oracle/instantclient_12_2 /opt/oracle/instantclient && \
    ln -s /opt/oracle/instantclient/libclntsh.so.12.1 /opt/oracle/instantclient/libclntsh.so && \
    rm -rf /opt/oracle/instantclient-basic-linux.x64-12.2.0.1.0.zip && \
    rm -rf /opt/oracle/instantclient-sdk-linux.x64-12.2.0.1.0.zip && \
    echo "/opt/oracle/instantclient" > /etc/ld.so.conf.d/oracle-instantclient.conf && \
    ldconfig

ENV LD_LIBRARY_PATH=/opt/oracle/instantclient:$LD_LIBRARY_PATH \
    OCI_LIB_DIR=/opt/oracle/instantclient \
    OCI_INC_DIR=/opt/oracle/instantclient/sdk/include

RUN npm install oracledb --global
