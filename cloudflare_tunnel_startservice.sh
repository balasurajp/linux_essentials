service_name=$1
service_docker_command=$2
sysservice_script="[Unit]
Description=CldFlrTun Docker Container Service

[Service]
Restart=always
ExecStart=${service_docker_command}

[Install]
WantedBy=multi-user.target"

echo "$sysservice_script" > "$service_name".service
sudo cp "$service_name".service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start "$service_name"
sudo systemctl enable "$service_name"

sleep 5
sudo systemctl status "$service_name"
