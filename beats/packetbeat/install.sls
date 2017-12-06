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
    service.running:
        - name: packetbeat
        - enable: True
        - require:
            - pkg: packetbeat_install
        {% if salt['pillar.get']('beats:packetbeat:config', {}) %}
        - watch:
            - file: /etc/packetbeat/packetbeat.yml
        {% endif %}
