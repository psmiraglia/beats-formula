include:
    - beats.filebeat.install
    - beats.filebeat.config

# Enable and run Filebeat daemon
filebeat_running:
    service.running:
        - name: filebeat
          enable: True
          require:
            - sls: beats.filebeat.install
{%- if salt['pillar.get']('beats:filebeat:config') %}
            - sls: beats.filebeat.config
          watch:
            - file: /etc/filebeat/filebeat.yml
{% endif %}
