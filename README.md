# control

Pull update and deploy:
`r10k deploy environment -p`

Puppetserver:
`puppet agent -t`

Sign certificate:
`puppetserver ca list`
`puppetserver ca sign --certname web.puppet.vm `