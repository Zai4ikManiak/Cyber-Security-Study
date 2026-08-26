
OS := $(shell grep -ie '^name=' /etc/os-release | awk -F '"' '{print $$2}' | tr '[:upper:]' '[:lower:]')
VERSION := $(shell grep -ie "^version=" /etc/os-release | awk -F '"' '{print$$2}' | egrep -o "^[0-9]+\.[0-9]+")

help:
        @printf "\n%s\n" "List of targets:"
        @printf "%s\n\n" "---------------------"
        @printf "%s\n" "zabbix_server_install - Install the Zabbix Server"

include Zabbix/zabbix_server.mk
