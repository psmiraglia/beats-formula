{% if salt['pillar.get']('beats:filebeat:config', {}) %}
/etc/filebeat/filebeat.yml:
    file.serialize:
        - dataset_pillar: 'beats:filebeat:config'
        - formatter: yaml
{% endif %}
