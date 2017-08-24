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
    service.running:
        - name: metricbeat
        - enable: True
        - require:
            - pkg: metricbeat_install
        {% if salt['pillar.get']('beats:metricbeat:config', {}) %}
        - watch:
            - file: /etc/metricbeat/metricbeat.yml
        {% endif %}

