include:
    - beats.repository

# Install the filebeat package
filebeat_install:
    pkg.installed:
        - name: filebeat
        - require:
            - sls: beats.repository
