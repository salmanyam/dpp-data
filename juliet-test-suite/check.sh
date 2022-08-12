#!/bin/bash

while netstat -ano | grep :27015 > /dev/null; do
	echo 'checking port...'
	sleep 2 # wait for 2 second before check again          
done

