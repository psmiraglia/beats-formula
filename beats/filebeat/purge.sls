# Disable the filebeat systemd unit
filebeat_disable:
    service.dead:
        - name: filebeat
        - enable: False

# Uninstall the filebeat package
filebeat_uninstall:
    pkg.purged:
        - name: filebeat
