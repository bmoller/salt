{{ pillar['user']['name'] }}:
  user.present:
    - groups: {{ pillar['user']['groups'] }}
    - home: /home/{{ pillar['user']['name'] }}
    - shell: {{ pillar['user']['shell'] }}
