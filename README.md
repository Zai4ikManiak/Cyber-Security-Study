
```mermaid
---
config:
    themeCSS: |
        .greenHighlight .node-label {
            background-color: rgba(76, 175, 80, 0.2) !important;
            border: 1px solid #4CAF50 !important;
            padding: 2px 6px;
            border-radius: 4px;
        }
    treeView:
        showIcons: false
        defaultIconPack: material-icon-theme
---
treeView-beta
    📄 README.txt
    📁 source/ 
        🔨 Variables.mk
        🔨 MySQL.mk :::greenHighlight ## Download, and deploy MySQL server on localhost.
        🔨 Zabbix_server.mk :::highlight ## Download, setup, and deploy Zabbix Server on localhost.
        🔨 Zabbix_agent2.mk :::highlight ## Download, setup, and deploy Zabbix Agent2 on localhost.
```
