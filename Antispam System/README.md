

```mermaid
---
title: Network Flow
---
flowchart LR
    
    subgraph libvirt["OVS-Bridge Network"]

    end

    subgraph firewall["NFTables Network"]

    end

    libvirt --> firewall
```
