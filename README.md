perl-Ceph-Rados
===============

Perl Binding for Ceph Rados C library. This is largely proof of concept code (from years ago) that could use some tests and more bindings. I more or less just looked at bindings from other languages and translated the code into C, binding with Perl's Inline::C. I recently came across some threads where people seem to actually be using it, so I decided to dump it into github where people can send patches and collaboration can occur.

Example:
`
mlsorensen@mlsorensen-pc:~/Downloads/Ceph-RADOS-0.01$ perl Makefile.PL
Writing Makefile for Ceph::RADOS

mlsorensen@mlsorensen-pc:~/Downloads/Ceph-RADOS-0.01$ make
Skip blib/lib/Ceph/types (unchanged)
Skip blib/lib/Ceph/RADOS.pm (unchanged)
Skip blib/lib/Ceph/RADOS.pm (unchanged)
Manifying blib/man3/Ceph::RADOS.3pm

mlsorensen@mlsorensen-pc:~/Downloads/Ceph-RADOS-0.01$ sudo make install
Files found in blib/arch: installing files in blib/lib into
architecture dependent library tree
Installing /usr/local/lib/perl/5.10.1/auto/Ceph/RADOS/RADOS.so
Installing /usr/local/lib/perl/5.10.1/Ceph/RADOS.pm
Installing /usr/local/lib/perl/5.10.1/Ceph/types
Installing /usr/local/man/man3/Ceph::RADOS.3pm
Appending installation info to /usr/local/lib/perl/5.10.1/perllocal.pod

perl ./testrados2.pl monserverip
connected
Kbytes: 11719699184
Kbytes used: 1604639852
Kbytes avail: 10107061988
Objects: 194577
create pool this_test_pool success
pool:(8)  .rgw
pool:(9)  .rgw.gc
pool:(10)  .rgw.control
pool:(11)  .users.uid
pool:(12)  .users
pool:(13)  .users.email
pool:(14)  .users.swift
pool:(17)  .rgw.buckets
pool:(18)  .usage
pool:(20)  .rgw.root
pool:(21)  this_test_pool
open pool success
pool id: 21
pool auid: 0
new pool auid: 232323
delete pool this_test_pool success
`
