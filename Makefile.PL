
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Dist-Zilla-Plugin-CriticTests',
  NAME      => 'Dist::Zilla::Plugin::CriticTests',
  AUTHOR    => 'Jerome\ Quelin',
  ABSTRACT  => 'tests\ to\ check\ your\ code\ against\ best\ practices',
  VERSION   => '0.1.0',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Test::More" => '0',
    "File::Find::Rule" => '0',
    "English" => '0',
    "Moose" => '0',
    "Dist::Zilla::Plugin::InlineFiles" => '0',
  },
);
