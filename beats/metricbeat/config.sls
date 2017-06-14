{% if salt['pillar.get']('beats:metricbeat:config', {}) %}
/etc/metricbeat/metricbeat.yml:
    file.serialize:
        - dataset_pillar: 'beats:metricbeat:config'
        - formatter: yaml
{% endif %}
