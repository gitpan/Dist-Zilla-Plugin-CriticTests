
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'Carp' => '0',
    'English' => '0',
    'File::Find' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'Scalar::Util' => '0',
    'Test::More' => '0.94'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'tests to check your code against best practices',
  'dist_author' => [
    'Jerome Quelin'
  ],
  'dist_name' => 'Dist-Zilla-Plugin-CriticTests',
  'dist_version' => '1.102270',
  'license' => 'perl',
  'module_name' => 'Dist::Zilla::Plugin::CriticTests',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Dist::Zilla::Plugin::InlineFiles' => '0',
    'Dist::Zilla::Role::FileMunger' => '0',
    'Dist::Zilla::Role::TextTemplate' => '0',
    'Moose' => '0',
    'Moose::Util' => '0',
    'perl' => '5.008'
  },
  'script_files' => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
