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
    service.running:
        - name: filebeat
        - enable: True
        - require:
            - pkg: filebeat_install
        {% if salt['pillar.get']('beats:filebeat:config', {}) %}
        - watch:
            - file: /etc/filebeat/filebeat.yml
        {% endif %}