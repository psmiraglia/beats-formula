include:
    - beats.repository

# Install the auditbeat package
auditbeat_install:
    pkg.installed:
        - name: auditbeat
        - require:
            - sls: beats.repository

# Enable the auditbeat systemd unit
auditbeat_enabled:
    service.enabled:
        - name: auditbeat
        - require:
            - pkg: auditbeat_install
