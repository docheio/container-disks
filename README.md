# Container Disks
This repo provides container-disk that can be used for Kubevirt's cloud-init on Kubernete.

# Available Packages
| OS         | Version | Login    | URL                                                | Detail            |
|:-----------|:--------|:---------|:---------------------------------------------------|:------------------|
| archlinux  |         | arch     | `ghcr.io/docheio/containerdisk-archlinux:latest`   |                   |
| ubuntu     | bionic  | ubuntu   | `ghcr.io/docheio/containerdisk-ubuntu:18`          |                   |
| ubuntu     | focal   | ubuntu   | `ghcr.io/docheio/containerdisk-ubuntu:20`          |                   |
| ubuntu     | jammy   | ubuntu   | `ghcr.io/docheio/containerdisk-ubuntu:22`          |                   |
| ubuntu     | lunar   | ubuntu   | `ghcr.io/docheio/containerdisk-ubuntu:23`          |                   |
| opensuse   | 15.1    | opensuse | `ghcr.io/docheio/containerdisk-opensuse-leap:15.1` |                   |
| opensuse   | 15.2    | opensuse | `ghcr.io/docheio/containerdisk-opensuse-leap:15.2` |                   |
| opensuse   | 15.3    | opensuse | `ghcr.io/docheio/containerdisk-opensuse-leap:15.3` |                   |
| opensuse   | 15.4    | opensuse | `ghcr.io/docheio/containerdisk-opensuse-leap:15.4` |                   |
| opensuse   | 15.5    | opensuse | `ghcr.io/docheio/containerdisk-opensuse-leap:15.5` |                   |
| centos     | 7       | centos   | `ghcr.io/docheio/containerdisk-centos:7`           |                   |
| centos     | 8       | centos   | `ghcr.io/docheio/containerdisk-centos:8`           |                   |
| centos     | 8stream | centos   | `ghcr.io/docheio/containerdisk-centos:8-stream`    |                   |
| centos     | 9stream | centos   | `ghcr.io/docheio/containerdisk-centos:9-stream`    |                   |
| fedora     | 35      | fedora   | `ghcr.io/docheio/containerdisk-fedora:35`          | No longer updated |
| fedora     | 36      | fedora   | `ghcr.io/docheio/containerdisk-fedora:36`          |   No longer updated |
| fedora     | 37      | fedora   | `ghcr.io/docheio/containerdisk-fedora:37`          |                   |
| fedora     | 38      | fedora   | `ghcr.io/docheio/containerdisk-fedora:38`          |                   |
| rockylinux | 8       | rocky    | `ghcr.io/docheio/containerdisk-rockylinux:8`       |                   |
| rockylinux | 9       | rocky    | `ghcr.io/docheio/containerdisk-rockylinux:9`       |                   |

# Demo
```yaml
apiVersion: cdi.kubevirt.io/v1beta1
kind: DataVolume
metadata:
  name: example
spec:
  source:
    registry:
      url: "docker://ghcr.io/docheio/containerdisk-archlinux:latest"
  pvc:
    accessModes:
      - ReadWriteMany
    resources:
      requests:
        storage: 40Gi
---
apiVersion: kubevirt.io/v1
kind: VirtualMachine
metadata:
  labels:
    kubevirt.io/os: linux
  name: example
spec:
  running: true
  template:
    metadata:
      labels:
        kubevirt.io/domain: example
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
            memory: 4G
            cpu: '4'
      networks:
      - name: default
        pod: {}
      volumes:
      - name: disk0
        dataVolume:
          name: example
      - name: cloudinitdisk
        cloudInitNoCloud:
         userData: |
            #cloud-config
            hostname: example
            ssh_pwauth: false
            disable_root: true
            ssh_authorized_keys:
            - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAEXAMPLEEXAMPLEEXAMPLEEXAMPLEEXAMPLEEXAMPLEOO example
---
apiVersion: v1
kind: Service
metadata:
  name: example
spec:
  type: LoadBalancer
  selector:
    kubevirt.io/domain: example
  ports:
  - protocol: TCP
    name: tcp22
    port: 22
    targetPort: 22
```

# License
Under [MIT license](https://en.wikipedia.org/wiki/MIT_License).
