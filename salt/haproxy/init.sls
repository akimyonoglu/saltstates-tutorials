haproxy:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: haproxy
    - watch:
      - file: /etc/haproxy/haproxy.cfg

/etc/haproxy/haproxy.cfg:
  file:
    - managed
    - source: salt://haproxy/haproxy.cfg