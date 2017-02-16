include:
    - beats.repository

# Install the metricbeat package
metricbeat_install:
    pkg.installed:
        - name: metricbeat
        - require:
            - sls: beats.repository

# Enable the metricbeat systemd unit
metricbeat_enabled:
    service.enabled:
        - name: metricbeat
        - require:
            - pkg: metricbeat_install
