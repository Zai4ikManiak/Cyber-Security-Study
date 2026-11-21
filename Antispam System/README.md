

```mermaid
---
title: Network Flow
---
agentflow LR
    tap_int["Instace tap_interface"]@{ shape: input }

    flow firewall["NFTables Ruleset"]
        output_br["Output Bridge Interface"]@{ shape: decision }
        post_ro_br["Postrouting Bridge Interface"]@{ shape: decision }
        egress["Hypervisor Egress Interface"]@{ shape: decision }
    end

    tap_int --> firewall
    output_br --> post_ro_br --> egress
```
