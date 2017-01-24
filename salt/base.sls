Europe/London:
    timezone.system

/root/.ssh/authorized_keys:
  file.append:
    - text:
        - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDMi9klh9K4SEnxectpdwuvXkaThjI+uJNBAV92W21A0Jwk/albQc1c8gZ+k4GN6DqJA2wV9xLw/DcPmXTiIY1can+JYg/wwK/gn3WzKyhDCHRcATefz4bnDY3e1Bq/JHz5T5+ExNXCKEO6rz0sj/4OD7vvlXjYhWYc6rG017WXATcxuBJUAK57dup9UcBy4KRJt2OfX4/EmZCvs7ZxrQPbgnVsDqkAyg7q8Mm52u5MrrFZYX/kS4h2GTekkQ+esVBAHBwqz60yaxzQ7rlSf3Mq5OIkw44+tOKNp/PRO4Cpg9Q09J5IC8qe8aGdnzJPdo2rbbKGBx9z61z1dtSxnewx dale.potter@devinit.org
        - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDWRwTHUdgLWL9i1eRl+ksfrKcIOmLm1bLEWz3kJ6JFchIcjbM3crt8O+EQb5ZJw+DntOFV0OVnDZd8Zt/KgjFHjbSwPrU0QkKTmWo8/A2m3C8cU8FuIAP3Qj2PprAB9X93pqN5QvSQoW/hNek3/hZQJZyN53QlGmdeD8YAQLrTftGvPz0SoFV0Ik+S1FTt4XtKC+YFh87Bw7IqN3KxvIiCQK2AYaQhg13z8IoK83hvs3NDqKIKBL9N31GKNjKxIDFAj9/WjjbvTBV2Zu77k3rT/hyD3674GdGuSEbdwZqhmNPPHqk7twOnOA2XxBZVxZurxHPBVz8RDq8nkYGfNP4bxHqe9jG4sY4FLACNnrM/EI5lyiP6dUB+hqOvUCDp7sMqWGlym8ynrB5/V2OuSD6io8sT5asF2CS8R+XX9pnG/u9z0ryO+n29Jcjyv2Oat3SJ1p5KQk/lv6jMNzQoVgmD/JoQiRmo2bD3gnf8yu+O/y8HMtCUNG+odc4BgdZPZ2FktAd2x0ik3Mcfsf2msJ511dHjL1NNb5F9oGIDJaNbktvNRKZmeh8cDKN8Gt32hxyxePPNOK5WTo1gQJq/VCEOjVWIXJaSkqf/rrvvmuYgMph9AQUAuT2Ea6kQa/vZI+JzFXU58D2GoKyl1AqTnNI56FjyvwPSy4OEncoPf0a+oQ== hayden.field@devinit.org
    - makedirs: True

basic-server-deps:
    pkg.installed:
        - pkgs:
            - unattended-upgrades

/etc/apt/apt.conf.d/50unattended-upgrades:
  file.managed:
    - source: salt://50unattended-upgrades

/etc/apt/apt.conf.d/10periodic:
  file.managed:
    - source: salt://10periodic
