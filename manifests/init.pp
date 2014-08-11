# == Class: bindrecords
#
# A Puppet module to update dns records on an existing dns server
#
# === Parameters
#
# [*records*]
#   a hash of dns records you wish to add
#

class bindrecords (
  $records = undef,
) {
create_resources(dns_rr, $records)
}
