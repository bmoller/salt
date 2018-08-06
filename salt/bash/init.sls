/etc/dircolors:
  file.managed:
    - source: salt://bash/files/etc/dircolors
    - user: root
    - group: root
    - mode: '0644'

/etc/bash.bashrc:
  file.managed:
    - source: salt://bash/files/etc/bash.bashrc
    - user: root
    - group: root
    - mode: '0644'
    - template: jinja

/home/{{ pillar['user']['name'] }}/.bashrc:
  file.managed:
    - source: salt://bash/files/home/user/bashrc
    - user: {{ pillar['user']['name'] }}
    - group: {{ pillar['user']['name'] }}
    - mode: '0644'
    - template: jinja

 # vim: set ft=yaml:
