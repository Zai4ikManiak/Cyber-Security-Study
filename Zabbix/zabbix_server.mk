
zabbix_server_install:
        @printf "%s\n\n" "Installing Zabbix server on $(OS)$(VERSION)"
        @wget https://repo.zabbix.com/zabbix/7.0/$(OS)/pool/main/z/zabbix-release/zabbix-release_latest_7.0+$(OS)$(VERSION)_all.deb
