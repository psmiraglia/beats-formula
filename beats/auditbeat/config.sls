{% if salt['pillar.get']('beats:auditbeat:config', {}) %}
/etc/auditbeat/auditbeat.yml:
    file.serialize:
        - dataset_pillar: 'beats:auditbeat:config'
        - formatter: yaml
{% endif %}
