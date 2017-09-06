include:
    - beats.metricbeat.install
    - beats.metricbeat.config

# Enable and run Metricbeat daemon
metricbeat_running:
    service.running:
        - name: metricbeat
          enable: True
          require:
            - sls: beats.metricbeat.install
{%- if salt['pillar.get']('beats:metricbeat:config') %}
            - sls: beats.metricbeat.config
          watch:
            - file: /etc/metricbeat/metricbeat.yml
{% endif %}
