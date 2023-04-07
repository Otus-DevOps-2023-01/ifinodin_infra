# ifinodin_infra
ifinodin Infra repository

#### bastion_IP = 158.160.47.165
#### someinternalhost_IP = 10.128.0.13

### Connecting options:
- ssh -i .ssh/otus-infra -J  appuser@158.160.47.165 appuser@10.128.0.13
### or
- Configure .ssh/config:
```
### First bastion. Directly reachable
Host bastion
  HostName 158.160.47.165
    IdentityFile ~/.ssh/otus-infra
    User appuser
    ForwardAgent yes

### Host to jump to via bastion
Host someinternalhost
  HostName 10.128.0.13
    User appuser
    ProxyJump bastion
```
### Add SSL for pritunl:
#### - install certbot and complete dns challenge
* unfortunately, we encountered a rate-limit error  and were unable to complete the TLS setup
