class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDD5+U0Wadz8GFSOuI+vvzcch3LV1XWY6aa0AykfetiK/4jUDX2cBd7TXMGc39u7rv2iUb4lv+rjhmPC2an9fw1iFJn6Xd5K+veYB2b3f3PfMEiMcUO357QVCOUf1earHHZ45xxS/Kg91KhYVga1O0w/6uJFbgAU0nKMEx+PUwneo/Ta7dm3ZMehFNXQs+uQXyqR9m/3tqECslCsmBnjCe3l/0HVCAt8CugnpZk72FFkOQnzFVEhHLPUfGjNKt0fJYeRvoYHw9ukwi6yLfFhLrgyioEX6GQwMKpHzqygJpelyUY04OE0K4QRj+Sp3G0jeZZ95I4qj/ed405PkBMY501',
	}  
}
