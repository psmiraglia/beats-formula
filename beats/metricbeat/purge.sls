# Disable the metricbeat systemd unit
metricbeat_disable:
    service.dead:
        - name: metricbeat
        - enable: False

# Uninstall the metricbeat package
metricbeat_uninstall:
    pkg.purged:
        - name: metricbeat
