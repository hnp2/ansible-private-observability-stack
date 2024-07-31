#!/usr/bin/env bash

ROLES_PATH='roles'
ARCH_LIST='amd64 arm64'
ALERTMANAGER_VERSION='0.27.0'
PROMETHEUS_VERSION='2.53.1'
GRAFANA_VERSION='11.1.3'
ALLOY_VERSION='1.2.1'
LOKI_VERSION='3.1.0'
BEYLA_VERSION='1.7.0'


## Prometheus
## https://github.com/prometheus/prometheus/releases/download/v2.53.1/prometheus-2.53.1.linux-amd64.tar.gz

if [ ! -e "${ROLES_PATH}/prometheus/files/v${PROMETHEUS_VERSION}" ]; then
    mkdir -p "${ROLES_PATH}/prometheus/files/v${PROMETHEUS_VERSION}"
fi

for arch in $ARCH_LIST; do 
    if [ ! -e "${ROLES_PATH}/prometheus/files/v${PROMETHEUS_VERSION}/prometheus-${PROMETHEUS_VERSION}.linux-${arch}.tar.gz" ]; then
        cd "${ROLES_PATH}/prometheus/files/v${PROMETHEUS_VERSION}" \
        && wget https://github.com/prometheus/prometheus/releases/download/v${PROMETHEUS_VERSION}/prometheus-${PROMETHEUS_VERSION}.linux-${arch}.tar.gz \
        && cd - 
    fi
done

## Alertmanager
## https://github.com/prometheus/alertmanager/releases/download/v0.27.0/alertmanager-0.27.0.linux-amd64.tar.gz

if [ ! -e "${ROLES_PATH}/alertmanager/files/v${ALERTMANAGER_VERSION}" ]; then
    mkdir -p "${ROLES_PATH}/alertmanager/files/v${ALERTMANAGER_VERSION}"
fi

for arch in $ARCH_LIST; do 
    if [ ! -e "${ROLES_PATH}/alertmanager/files/v${ALERTMANAGER_VERSION}/alertmanager-${ALERTMANAGER_VERSION}.linux-${arch}.tar.gz" ]; then
        cd "${ROLES_PATH}/alertmanager/files/v${ALERTMANAGER_VERSION}" \
        && wget https://github.com/prometheus/alertmanager/releases/download/v${ALERTMANAGER_VERSION}/alertmanager-${ALERTMANAGER_VERSION}.linux-${arch}.tar.gz \
        && cd - 
    fi
done

## Alloy
## https://github.com/grafana/alloy/releases/download/v1.2.1/alloy-linux-amd64.zip

if [ ! -e "${ROLES_PATH}/alloy/files/v${ALLOY_VERSION}" ]; then
    mkdir -p "${ROLES_PATH}/alloy/files/v${ALLOY_VERSION}"
fi

for arch in $ARCH_LIST; do 
    if [ ! -e "${ROLES_PATH}/alloy/files/v${ALLOY_VERSION}/alloy-linux-${arch}.zip" ]; then
        cd "${ROLES_PATH}/alloy/files/v${ALLOY_VERSION}" \
        && wget https://github.com/grafana/alloy/releases/download/v${ALLOY_VERSION}/alloy-linux-${arch}.zip \
        && cd - 
    fi
done

## Loki
## https://github.com/grafana/loki/releases/download/v3.1.0/loki-linux-amd64.zip

if [ ! -e "${ROLES_PATH}/loki/files/v${LOKI_VERSION}" ]; then
    mkdir -p "${ROLES_PATH}/loki/files/v${LOKI_VERSION}"
fi

for arch in $ARCH_LIST; do 
    if [ ! -e "${ROLES_PATH}/loki/files/v${LOKI_VERSION}/loki-linux-${arch}.zip" ]; then
        cd "${ROLES_PATH}/loki/files/v${LOKI_VERSION}" \
        && wget https://github.com/grafana/loki/releases/download/v${LOKI_VERSION}/loki-linux-${arch}.zip \
        && cd - 
    fi
done

## Grafana
## https://dl.grafana.com/oss/release/grafana-11.1.3.linux-amd64.tar.gz

if [ ! -e "${ROLES_PATH}/grafana/files/v${GRAFANA_VERSION}" ]; then
    mkdir -p "${ROLES_PATH}/grafana/files/v${GRAFANA_VERSION}"
fi

for arch in $ARCH_LIST; do 
    if [ ! -e "${ROLES_PATH}/grafana/files/v${GRAFANA_VERSION}/grafana-${GRAFANA_VERSION}.linux-${arch}.tar.gz" ]; then
        cd "${ROLES_PATH}/grafana/files/v${GRAFANA_VERSION}" \
        && wget https://dl.grafana.com/oss/release/grafana-${GRAFANA_VERSION}.linux-${arch}.tar.gz \
        && cd - 
    fi
done


## Beyla
## https://github.com/grafana/beyla/releases/download/v1.7.0/beyla-linux-amd64-v1.7.0.tar.gz

if [ ! -e "${ROLES_PATH}/beyla/files/v${BEYLA_VERSION}" ]; then
    mkdir -p "${ROLES_PATH}/beyla/files/v${BEYLA_VERSION}"
fi

for arch in $ARCH_LIST; do 
    if [ ! -e "${ROLES_PATH}/beyla/files/v${BEYLA_VERSION}/beyla-linux-${arch}-v${BEYLA_VERSION}.tar.gz" ]; then
        cd "${ROLES_PATH}/beyla/files/v${BEYLA_VERSION}" \
        && wget https://github.com/grafana/beyla/releases/download/v${BEYLA_VERSION}/beyla-linux-${arch}-v${BEYLA_VERSION}.tar.gz \
        && cd - 
    fi
done
