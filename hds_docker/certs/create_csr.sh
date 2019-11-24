#!/bin/bash

openssl req -new \
      -newkey rsa:4096 -sha256 -nodes -keyout elk_privkey.pem -out elk_signreq.cer \
      -subj "/C=US/ST=Some State/L=Some Place/O=Cisco dcloud/emailAddress=webmaster@dcloud.cisco.com/CN=elk.dcloud.cisco.com" \
      -config openssl.cnf
