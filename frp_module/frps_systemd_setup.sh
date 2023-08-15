#!/bin/bash

SERVICE_CONTENT="[Unit]
Description=MY_FRP_SERVER

[Service]
ExecStart=/custom_modules/frp_module/frps -c /custom_modules/frp_module/frps_full.ini

[Install]
WantedBy=multi-user.target"

# Echo the service content and save it to frp_server.service
echo "$SERVICE_CONTENT" > frp_server.service
echo "frp_server.service file created successfully."

# after creating the service file, execute the below commands
sudo mv frp_server.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable frp_server.service
sudo systemctl start frp_server.service

