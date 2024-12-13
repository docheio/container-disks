# Container Disks [![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fdocheio%2Fcontainer-disks&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=view&edge_flat=false)](https://hits.seeyoufarm.com)
This repo provides container-disk that can be used for Kubevirt's cloud-init on Kubernete.

# Available Packages
| OS         | Version | Login    | URL                                                                                               | Detail            |
|:-----------|:--------|:---------|:--------------------------------------------------------------------------------------------------|:------------------|
| archlinux  |         | arch     | `cr.kubevirt.jp/containerdisk-archlinux:latest`   `ghcr.io/docheio/containerdisk-archlinux:latest`   |                   |
| ubuntu     | bionic  | ubuntu   | `cr.kubevirt.jp/containerdisk-ubuntu:18`          `ghcr.io/docheio/containerdisk-ubuntu:18`          |                   |
| ubuntu     | focal   | ubuntu   | `cr.kubevirt.jp/containerdisk-ubuntu:20`          `ghcr.io/docheio/containerdisk-ubuntu:20`          |                   |
| ubuntu     | jammy   | ubuntu   | `cr.kubevirt.jp/containerdisk-ubuntu:22`          `ghcr.io/docheio/containerdisk-ubuntu:22`          |                   |
| ubuntu     | mantic  | ubuntu   | `cr.kubevirt.jp/containerdisk-ubuntu:23`          `ghcr.io/docheio/containerdisk-ubuntu:23`          | No longer updated |
| ubuntu     | noble   | ubuntu   | `cr.kubevirt.jp/containerdisk-ubuntu:24`          `ghcr.io/docheio/containerdisk-ubuntu:24`          |                   |
| opensuse   | 15.1    | opensuse | `cr.kubevirt.jp/containerdisk-opensuse-leap:15.1` `ghcr.io/docheio/containerdisk-opensuse-leap:15.1` |                   |
| opensuse   | 15.2    | opensuse | `cr.kubevirt.jp/containerdisk-opensuse-leap:15.2` `ghcr.io/docheio/containerdisk-opensuse-leap:15.2` |                   |
| opensuse   | 15.3    | opensuse | `cr.kubevirt.jp/containerdisk-opensuse-leap:15.3` `ghcr.io/docheio/containerdisk-opensuse-leap:15.3` |                   |
| opensuse   | 15.4    | opensuse | `cr.kubevirt.jp/containerdisk-opensuse-leap:15.4` `ghcr.io/docheio/containerdisk-opensuse-leap:15.4` |                   |
| opensuse   | 15.5    | opensuse | `cr.kubevirt.jp/containerdisk-opensuse-leap:15.5` `ghcr.io/docheio/containerdisk-opensuse-leap:15.5` |                   |
| opensuse   | 15.6    | opensuse | `cr.kubevirt.jp/containerdisk-opensuse-leap:15.6` `ghcr.io/docheio/containerdisk-opensuse-leap:15.6` |                   |
| centos     | 7       | centos   | `cr.kubevirt.jp/containerdisk-centos:7`           `ghcr.io/docheio/containerdisk-centos:7`           |                   |
| centos     | 8       | centos   | `cr.kubevirt.jp/containerdisk-centos:8`           `ghcr.io/docheio/containerdisk-centos:8`           |                   |
| centos     | 8stream | centos   | `cr.kubevirt.jp/containerdisk-centos:8-stream`    `ghcr.io/docheio/containerdisk-centos:8-stream`    |                   |
| centos     | 9stream | centos   | `cr.kubevirt.jp/containerdisk-centos:9-stream`    `ghcr.io/docheio/containerdisk-centos:9-stream`    |                   |
| fedora     | 35      | fedora   | `cr.kubevirt.jp/containerdisk-fedora:35`          `ghcr.io/docheio/containerdisk-fedora:35`          | No longer updated |
| fedora     | 36      | fedora   | `cr.kubevirt.jp/containerdisk-fedora:36`          `ghcr.io/docheio/containerdisk-fedora:36`          | No longer updated |
| fedora     | 37      | fedora   | `cr.kubevirt.jp/containerdisk-fedora:37`          `ghcr.io/docheio/containerdisk-fedora:37`          | No longer updated |
| fedora     | 38      | fedora   | `cr.kubevirt.jp/containerdisk-fedora:38`          `ghcr.io/docheio/containerdisk-fedora:38`          | No longer updated |
| fedora     | 39      | fedora   | `cr.kubevirt.jp/containerdisk-fedora:39`          `ghcr.io/docheio/containerdisk-fedora:39`          |                   |
| fedora     | 40      | fedora   | `cr.kubevirt.jp/containerdisk-fedora:40`          `ghcr.io/docheio/containerdisk-fedora:40`          |                   |
| fedora     | 41      | fedora   | `cr.kubevirt.jp/containerdisk-fedora:41`          `ghcr.io/docheio/containerdisk-fedora:41`          |                   |
| rockylinux | 8       | rocky    | `cr.kubevirt.jp/containerdisk-rockylinux:8`       `ghcr.io/docheio/containerdisk-rockylinux:8`       |                   |
| rockylinux | 9       | rocky    | `cr.kubevirt.jp/containerdisk-rockylinux:9`       `ghcr.io/docheio/containerdisk-rockylinux:9`       |                   |
| rockylinux | 9.5     | rocky    | `cr.kubevirt.jp/containerdisk-rockylinux:9.5`     `ghcr.io/docheio/containerdisk-rockylinux:9.5`     |                   |

# Docker Hub
| OS         | URL                                                           |
|:-----------|:--------------------------------------------------------------|
| archlinux  | https://hub.docker.com/r/docheio/containerdisk-archlinux      |
| ubuntu     | https://hub.docker.com/r/docheio/containerdisk-ubuntu         |
| opensuse   | https://hub.docker.com/r/docheio/containerdisk-opensuse       |
| centos     | https://hub.docker.com/r/docheio/containerdisk-centos         |
| fedora     | https://hub.docker.com/r/docheio/containerdisk-fedora         |
| rockylinux | https://hub.docker.com/r/docheio/containerdisk-rockylinux     |

# Demo
```bash
NAMESPACE="default"
NAME="example"
DISK="40Gi"
CPU="4"
MEM="4G"
SSH_KEY="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAEXAMPLEEXAMPLEEXAMPLEEXAMPLEEXAMPLEEXAMPLEOO example"
URL="docker://ghcr.io/docheio/containerdisk-archlinux:latest"

cat <<EOF | kubectl -n $NAMESPACE apply -f -
apiVersion: cdi.kubevirt.io/v1beta1
kind: DataVolume
metadata:
  name: $NAME
spec:
  source:
    registry:
      url: $URL
  pvc:
    accessModes:
      - ReadWriteMany
    resources:
      requests:
        storage: $DISK
---
apiVersion: kubevirt.io/v1
kind: VirtualMachine
metadata:
  labels:
    kubevirt.io/os: linux
  name: $NAME
spec:
  running: true
  template:
    metadata:
      labels:
        kubevirt.io/domain: $NAME
    spec:
      nodeSelector:
        kubevirt.io/schedulable: "true"
      domain:
        devices:
          disks:
          - disk:
              bus: virtio
            name: disk0
          - cdrom:
              bus: sata
              readonly: true
            name: cloudinitdisk
          interfaces:
          - name: default
            macAddress: '72:35:18:b7:59:7a'
            masquerade: {}
        machine:
          type: q35
        resources:
          requests:
            memory: 1G
            cpu: '1'
          limits:
            memory: $MEM
            cpu: $CPU
      networks:
      - name: default
        pod: {}
      volumes:
      - name: disk0
        dataVolume:
          name: $NAME
      - name: cloudinitdisk
        cloudInitNoCloud:
         userData: |
            #cloud-config
            hostname: $NAME
            ssh_pwauth: false
            disable_root: true
            ssh_authorized_keys:
            - $SSH_KEY
---
apiVersion: v1
kind: Service
metadata:
  name: $NAME
spec:
  type: LoadBalancer
  selector:
    kubevirt.io/domain: $NAME
  ports:
  - protocol: TCP
    name: tcp22
    port: 22
    targetPort: 22
EOF
```

# License
Under [MIT license](https://en.wikipedia.org/wiki/MIT_License).
