include:
    - beats.repository

# Install the metricbeat package
metricbeat_install:
    pkg.installed:
        - name: metricbeat
        - version: {{ salt['pillar.get']('beats:metricbeat:version', '6.1.2') }}
        - require:
            - sls: beats.repository
