use 5.010001;
use Inline::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Ceph::RADOS',
    VERSION_FROM      => 'RADOS.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT  => 'RADOS.pm rados bindings for perl', #description 
       AUTHOR         => 'mlsorensen <mlsorensen@mlsorensen.com>') : ()),
);
