install_necessary_packages:
  pkg.latest:
    - pkgs:
      - python
      - python-pip
      - vim

purge_crap:
  pkg.purged:
    - pkgs:
      - nano

# vim: set ft=yaml:
