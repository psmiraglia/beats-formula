{% if salt['grains.get']('os_family') == 'Debian' %}

add_elastic_repository:
    pkg.installed:
        - name: apt-transport-https

    pkgrepo.managed:
        - name: deb https://artifacts.elastic.co/packages/5.x/apt stable main
        - file: /etc/apt/sources.list.d/elastic.list
        - gpgcheck: 1
        - key_url: https://artifacts.elastic.co/GPG-KEY-elasticsearch
        - require:
            - pkg: apt-transport-https

{% elif salt['grains.get']('os_family') == 'RedHat' %}

add_elastic_repository:
    pkgrepo.managed:
        - name: elastic
        - humanname: "Elastic repository for 5.x packages"
        - baseurl: https://artifacts.elastic.co/packages/5.x/yum
        - gpgkey: https://artifacts.elastic.co/GPG-KEY-elasticsearch
        - gpgcheck: 1
        - disabled: False

{% endif %}

