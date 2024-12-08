echo "//////////////////"
echo "Bienvenido a su instalador de Prometheus, Node Exporter y Grafana."
echo "¡Comencemos a trabajar!"
echo "//////////////////"
sleep 3s
echo "Inicialmente, se instalarán prometheus y algunas dependencias para los pasos siguientes..."
sudo apt install -y wget tar prometheus prometheus-node-exporter apt-transport-https software-properties-common
sleep 1s
echo "Ahora, se recargan los daemons de systemctl y se arranca el servicio de Prometheus..."
sudo systemctl daemon-reload
sudo systemctl enable prometheus.service
sudo systemctl start prometheus.service
sleep 2s
echo "Ahora, corresponde añadir el repo de Grafana a la sourcelist y realizar la instalación"
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key-add -
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
sudo apt update
sudo apt install -y grafana
sleep 1s
echo "Ahora, se recargan los daemons de systemctl y se arranca el servicio de Grafana..."
sudo systemctl daemon-reload
sudo systemctl enable grafana-server.service
sudo systemctl start grafana-server.service
echo "Fui programado para llegar hasta acá. Los pasos pendientes son la confiugración de datasources y de umbrales. ¡A trabajar!"
