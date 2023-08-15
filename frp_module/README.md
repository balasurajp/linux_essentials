## FRP SERVER: Inside Public IP Server Terminal
1. create a folder using the command `mkdir -p /custom_modules/frp_module`
2. copy the content of this folder into the above folder `cp -r ./* /custom_modules/frp_module/`
3. change the working directory to `cd /custom_modules/frp_module`
4. run the setup script using the command `bash ./custom_modules/frp_module/frps_systemd_setup.sh`

## FRP CLIENT: Inside the linux system under private network which you wanna expose to internet via FRP server
1. change the contents of `frpc.ini` file based on your use-case. refer the link `https://github.com/fatedier/frp` on how to edit the frpc.ini file.
2. open a screen terminal using command `screen -S frp_client`
3. run the command `./frpc -c ./frpc.ini`
