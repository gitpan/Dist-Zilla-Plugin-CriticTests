
use strict;
use warnings;

use Module::Build 0.3601;

my %module_build_args = (
                       'dist_abstract' => 'tests to check your code against best practices',
                       'dist_author' => [
                                          'Jerome Quelin'
                                        ],
                       'dist_name' => 'Dist-Zilla-Plugin-CriticTests',
                       'script_files' => [],
                       'module_name' => 'Dist::Zilla::Plugin::CriticTests',
                       'requires' => {
                                       'perl' => '5.008',
                                       'Test::More' => 0,
                                       'English' => 0,
                                       'File::Find' => 0,
                                       'Moose' => 0,
                                       'Dist::Zilla::Plugin::InlineFiles' => 0
                                     },
                       'license' => 'perl'
                     );


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
