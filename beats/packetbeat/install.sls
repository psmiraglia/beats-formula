include:
    - beats.repository

# Install the packetbeat package
packetbeat_install:
    pkg.installed:
        - name: packetbeat
        - require:
            - sls: beats.repository

# Enable the packetbeat systemd unit
packetbeat_enabled:
    service.enabled:
        - name: packetbeat
        - require:
            - pkg: packetbeat_install

