[Unit]
Description=DeployPumaServises
After=syslog.target

[Service]
ExecStart=/bin/bash '/scripts/deploy.sh'
Type=forking


[Install]
WantedBy=multi-user.target
Alias=bash.service
