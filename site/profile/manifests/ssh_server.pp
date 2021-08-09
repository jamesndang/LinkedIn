class profile::ssh_server {
      package {'openssh-server':
      ensure => present,
      }
      
      service {'sshd':
      ensure => running,
      enable => true,
      }
      
      ssh_authorized_key {'root@master.puppet.vm':
      ensure => present,
      user => 'root',
      type => 'ssh-rsa'
      key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDDnIGlV9Sp455/zQGrVWGVYSzDVqHleLZP64P3PT64A9KnKFqRiYJRgxvvlR0SZv808ssn+0WMABpWSdFvFArt9Pgtp/odaYO835IKl6bYyY+OZrjX0I1ql7mCu4dn6WVrT+BZRmg+W6UFycu+qd+zTf9aGHFalAO8yNYzNcAbZxvQOB2Ysjb5049B/BXBx/ffIgQK92BENw9FJ7vYE+bDRgMYMcmmeWrArmiTWxuP7lXiSvZa9M/yKKyuboDvxeuVePAHc7Z0EvlCOEEWVlSD/EWKlPMAVElTOnr1sfOYED0V2HM7fc6T9ckd+TV30yPGcQYPgQdeF1Nb+JBggc4b',
      }
}
