include:
    - beats.repository

# Install the metricbeat package
metricbeat_install:
    pkg.installed:
        - name: metricbeat
        - require:
            - sls: beats.repository
