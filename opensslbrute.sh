#!/bin/bash

for pass in $(cat /opt/SecLists/Passwords/darkweb2017-top10000.txt); do
	openssl enc -d -aes-256-cbc -a -in .drupal.txt.enc -k $pass > /dev/null 2>&1

	ret=$?
	if [ $ret -ne 1 ]; then
          echo $pass
	fi
done
