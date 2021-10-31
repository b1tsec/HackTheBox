#!/bin/bash

for pass in $(cat <password list>); do
	openssl enc -d -aes-256-cbc -a -in <encrypted file> -k $pass > /dev/null 2>&1

	ret=$?
	if [ $ret -ne 1 ]; then
          echo $pass
	fi
done
