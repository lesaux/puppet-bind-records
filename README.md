bindrecords
====

[![Build
Status](https://secure.travis-ci.org/lesaux/puppet-bind-records.png)](http://travis-ci.org/lesaux/puppet-bind-records)

## Description
nsupdate dns records with puppet


Overview
--------

Use a hash to maintain records:
```
IN/CNAME/www.example.com:
  ensure: present
  rrdata:
  - server.example.com.
  ttl: 86400
  zone: example.com
  server: ns.example.com
  keyname: rndc-key
  hmac: hmac-md5
  secret: yoursecretkey
IN/A/server.example.com:
  ensure: present
  rrdata:
  - 192.168.0.1
  ttl: 86400
  purge: false
  zone: example.com
  server: ns.example.com
  keyname: rndc-key
  hmac: hmac-md5
  secret: yoursecretkey
IN/PTR/1.0.168.192.in-addr.arpa:
  ensure: present
  rrdata:
  - server.example.com.
  ttl: 86400
  zone: 0.168.192.in-addr.arpa
  server: ns.example.com
  keyname: rndc-key
  hmac: hmac-md5
  secret: yoursecretkey
```
