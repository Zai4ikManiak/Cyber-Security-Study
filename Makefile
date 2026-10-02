.DEFAULT_GOAL := help

ENV := .env
include $(ENV)
export

include ./Make\ Files/*

help:
	@printf "\n%s\n" "List of targets:"
	
	@printf "%s\n" "-------------------------------------------"
	@printf "\n%s\t%s\n" "zabbix_server" "- Install Zabbix Server."
	
	@printf "\n"
