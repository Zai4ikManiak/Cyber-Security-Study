.PHONY: _database 

_database:
	@$(PKG_MNGR) install mysql-server -y
	@systemctl enable --now mysql.service
