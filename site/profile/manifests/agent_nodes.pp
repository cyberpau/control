class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'test.puppet.vm':}

  # Sample nodes for LinkedIn Learning Puppet Course:
  
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
  dockeragent::node {'minetest.puppet.vm':}
  

  # Manually Adding to fully qualified domain names (fqdn) to host
  host { 'web.puppet.vm':
    ensure => present,
    ip => '172.18.0.2',
  }
  host { 'db.puppet.vm':
    ensure => present,
    ip => '172.18.0.3',
  }
  host { 'minetest.puppet.vm':
    ensure => present,
    ip => '172.18.0.4',
  }
}
