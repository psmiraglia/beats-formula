include:
    - beats.repository

# Install the filebeat package
filebeat_install:
    pkg.installed:
        - name: filebeat
        - version: {{ salt['pillar.get']('beats:filebeat:version', '6.1.2') }}
        - require:
            - sls: beats.repository
