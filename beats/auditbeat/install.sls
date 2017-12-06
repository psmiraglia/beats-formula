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
    service.running:
        - name: auditbeat
        - enable: True
        - require:
            - pkg: auditbeat_install
        {% if salt['pillar.get']('beats:auditbeat:config', {}) %}
        - watch:
            - file: /etc/auditbeat/auditbeat.yml
        {% endif %}