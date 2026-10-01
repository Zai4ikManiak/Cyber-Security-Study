include source/Variables.mk

help:
	@printf "\n%s\n" "List of targets:"
	@printf "%s\n" "----------------------------------------------"
	@printf "\n%s\n" "[Zabbix]"
	@printf "\t%s\t\t%s\n" "zabbix_server" "- Install Zabbix Server."
	@printf "\t%s\t\t%s\n" "zabbix_proxy" "- Install Zabbix Proxy."
	@printf "\t%s\t\t%s\n" "zabbix_agent2" "- Install Zabbix Agent2."
	@printf "\n%s\n" "----------------------------------------------"
	@printf "\n%s\n" "[Wazuh]"
	@printf "\t%s\t\t%s\n" "wazuh_server" "- Install Wazuh Server."
	@printf "\t%s\t\t%s\n" "wazuh_agent" "- Install Wazuh Agent."
	@printf "\n"

include source/Zabbix_server.mk
