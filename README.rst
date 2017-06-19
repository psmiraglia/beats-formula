=====
beats
=====

Install and configure the Elastic Beats patform.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``beats.repository``
--------------------

Installs the Elastic repository for version 5.x packages.

``beats.filebeat.install``
--------------------------

Installs the Filebeat package and enables the relative systemd unit.

``beats.filebeat.config``
-------------------------

Configures Filebeat by reading from ``beats:filebeat:config`` pillar key.

``beats.filebeat.service``
--------------------------

Runs and enables the Filebeat service.

``beats.filebeat.purge``
------------------------

Purges the environment created by ``beats.filebeat.*`` states.

``beats.metricbeat.install``
----------------------------

Installs the Metricbeat package and enables the relative systemd unit.

``beats.metricbeat.config``
---------------------------

Configures Metricbeat by reading from ``beats:metricbeat:config`` pillar key.

``beats.metricbeat.service``
----------------------------

Runs and enables the Metricbeat service.

``beats.metricbeat.purge``
--------------------------

Purges the environment created by ``beats.metricbeat.*`` states.

References
==========

-  `Elastic Beats Platform <https://www.elastic.co/products/beats>`__
-  `Elastic Documentation <https://www.elastic.co/guide/index.html>`__
-  `Salt Formulas <https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`__
