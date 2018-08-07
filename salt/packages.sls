install_necessary_packages:
  pkg.latest:
    - pkgs: {{ pillar['packages']['installed'] }}

purge_crap:
  pkg.purged:
    - pkgs: {{ pillar['packages']['purged'] }}

# vim: set ft=yaml:
