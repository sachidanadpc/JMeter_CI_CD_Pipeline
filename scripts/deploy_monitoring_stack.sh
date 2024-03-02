#!/bin/bash

# Install Helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

# Add Helm repo for InfluxDB
helm repo add influxdata https://helm.influxdata.com/

# Install InfluxDB
helm install influxdb influxdata/influxdb

# Add Helm repo for Grafana
helm repo add grafana https://grafana.github.io/helm-charts

# Install Grafana
helm install grafana grafana/grafana
