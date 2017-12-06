# Disable the packetbeat systemd unit
packetbeat_disable:
    service.dead:
        - name: metricbeat
        - enable: False

# Uninstall the packetbeat package
packetbeat_uninstall:
    pkg.purged:
        - name: packetbeat
