useradd -M -r -s /bin/false node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v0.18.1/node_exporter-0.18.1.linux-386.tar.gz
tar -xvf node_exporter-0.18.1.linux-386.tar.gz
cp node_exporter-0.18.1.linux-amd64/node_exporter /usr/local/bin/
chown node_exporter:node_exporter /usr/local/bin/node_exporter
cp node_exporter.service /etc/systemd/system/node_exporter.service
systemctl daemon-reload
systemctl enable --now node_exporter.service
systemctl start node_exporter.service
