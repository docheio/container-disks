# Container Disks
This repo provides container-disk that can be used for Kubevirt's cloud-init on Kubernete.

# Available Packages
- `archlinux:latest`
- `ubuntu:18`
- `ubuntu:20`
- `ubuntu:22`
- `ubuntu:23` <span style="color:red;">deprecated</span>

# Demo
```yaml
apiVersion: cdi.kubevirt.io/v1beta1
kind: DataVolume
metadata:
  name: example
spec:
  source:
    registry:
      url: "ghcr.io/docheio/containerdisk-archlinux:latest"
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
