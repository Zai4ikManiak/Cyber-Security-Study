OS := $(shell . /etc/os-release && printf '%s' "$$ID")
VERSION := $(shell . /etc/os-release && printf '%s' "$$VERSION_ID")

PKG_MNG := $(shell \
           if command -v apt-get >/dev/null; then echo apt; \
           elif command -v dnf >/dev/null; then echo dnf; \
           elif command -v yum >/dev/null; then echo yum; \
           fi)

PKG_MNGR := $(shell \
            if command -v dpkg >/dev/null; then echo dpkg; \
            elif command -v rpm >/dev/null; then echo rpm; \
            fi)

help:
        @printf "\n%s\n" "List of targets:"
        @printf "%s\n\n" "---------------------"
        @printf "%s\n" "zabbix_server_install - Install the Zabbix Server"

include Zabbix/zabbix_server.mk
