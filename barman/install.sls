# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "barman/map.jinja" import barman with context %}

{%- if barman.use_upstream_repo %}
include:
  - barman.repo
{%- endif %}

barman-pkg:
  pkg.installed:
    - name: {{ barman.pkg }}
