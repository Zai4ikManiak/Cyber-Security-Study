zabbix_server_install: zabbix_server_install_$(OS)
        @printf "%s\n\n" "Installing Zabbix server on $(OS)$(VERSION)"
        @printf "%s\n" "Install Zabbix server, fornted, agent2"
        @$(PKG_MNG) install -y zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-sql-scripts zabbix-agent2
        @printf "%s\n" "Install Zabbix agent 2 plugins"
        @$(PKG_MNG) install -y zabbix-agent2-plugin-mongodb zabbix-agent2-plugin-mssql zabbix-agent2-plugin-postgresql 

zabbix_server_install_ubuntu:
        @printf "\n%s\n" "1. Install Zabbix repository"
        @wget https://repo.zabbix.com/zabbix/7.0/$(OS)/pool/main/z/zabbix-release/zabbix-release_latest_7.0+$(OS)$(VERSION)_all.deb
        @$(PKG_MNGR) -i zabbix-release_latest_7.0+$(OS)$(VERSION)_all.deb
        @$(PKG_MNG) update -y

zabbix_server_install_centos:
        @printf "\n%s\n" "1. Install Zabbix repository"
        @echo "In progress"
