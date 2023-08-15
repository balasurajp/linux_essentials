#!/bin/bash

SERVICE_CONTENT="[Unit]
Description=MY_SYSTEMD_SERVICE

[Service]
ExecStart=/scripts/app_module/app_script.sh

[Install]
WantedBy=multi-user.target"

# Echo the service content and save it to frp_server.service
echo "$SERVICE_CONTENT" > my_systemd_template.service
echo "my_systemd_template.service file created successfully."

# after creating the service file, execute the below commands
sudo mv my_systemd_template.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable my_systemd_template.service
sudo systemctl start my_systemd_template.service

