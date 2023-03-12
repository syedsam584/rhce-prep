#!/bin/bash

useradd sohailsyed

mkdir -p /home/sohailsyed/.ssh

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDgYb8FRnTUzfgTu6hWi5TU3UEmZo06bK2ufynCR76osgfN6WJYf/oSdp8t4xT5xSgDc5tlH8D8qSBn7gCQScVZfrFIz7N/kZdB9t7kmLE6foNCeLY8U/U/3M9xhYEc0v8MDeXlOl3zpKye6J8gAb5bwYWBMzE8tU34AGIncvAbfIwCGnHobQN91kCLqaq4hZymDfBX6rRJokNqMBVXmafDf6lghBqWGUGTsgQxJo4g2tk466pWkdu9/ioSKqCpq6qJqC8woc9HRpCEFQA7DFHBpmDdcc820AlHnYvfvWE2gUPpQ4iZEdzUuYQtAfpqU66FVlRhIdSiCfGPwUu8aQYLIouzD51ahBMv6meMZSw0+dimnAWOD1kQxJgFacmOyuVPTQ0o5pk6uHV7+r18PJiBWvOt9KE0gZ1svJhP+NRMQ2xd0Yid2XJ/7LuJCOpxIoLOXyOhG2KFIDs2ZteLd5+UsB+K0K4DgWB2wgkc/o/KIGU43E43cdpcwdR+8EvasdM= sohailsyed@Sohails-MBP.example.org" >> /home/sohailsyed/.ssh/authorized_keys

chown -R sohailsyed /home/sohailsyed/.ssh
chmod 0600 /home/sohailsyed/.ssh/authorized_keys

echo -e "\n#Sudo Access For Sohail" >> /etc/sudoers
echo "sohailsyed        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
