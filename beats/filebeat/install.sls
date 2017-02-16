include:
    - beats.repository

# Install the filebeat package
filebeat_install:
    pkg.installed:
        - name: filebeat
        - require:
            - sls: beats.repository

# Enable the filebeat systemd unit
filebeat_enabled:
    service.enabled:
        - name: filebeat
        - require:
            - pkg: filebeat_install
