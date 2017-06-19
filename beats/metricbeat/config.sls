include:
    - beats.metricbeat.install

{% if salt['pillar.get']('beats:metricbeat:config', {}) %}
/etc/metricbeat/metricbeat.yml:
    file.serialize:
        - dataset_pillar: 'beats:metricbeat:config'
        - formatter: yaml
        - require:
            - sls: beats.metricbeat.install
{% endif %}
