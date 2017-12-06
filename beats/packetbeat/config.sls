{% if salt['pillar.get']('beats:packetbeat:config', {}) %}
/etc/packetbeat/packetbeat.yml:
    file.serialize:
        - dataset_pillar: 'beats:packetbeat:config'
        - formatter: yaml
{% endif %}
