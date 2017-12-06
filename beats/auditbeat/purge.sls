# Disable the auditbeat systemd unit
auditbeat_disable:
    service.dead:
        - name: auditbeat
        - enable: False

# Uninstall the auditbeat package
auditbeat_uninstall:
    pkg.purged:
        - name: auditbeat
