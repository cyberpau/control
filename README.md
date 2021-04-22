# puppet control

Pull update and deploy:
`r10k deploy environment -p`

Puppetserver:
`puppet agent -t`

Sign certificate:
`puppetserver ca list`
`puppetserver ca sign --certname web.puppet.vm `


NOTE: ssh_server.pp doesn't work. Alternatively, I use the following commands on master:
1. Reset root password on each node e.g. `sudo passwd root`
2. Generate key e.g. `ssh-keygen`
3. Copy public key to web node e.g. `ssh-copy-id -i root@web.puppet.vm`
4. Copy public key to db node e.g. `ssh-copy-id -i root@db.puppet.vm`
