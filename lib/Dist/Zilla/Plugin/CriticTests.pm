# 
# This file is part of Dist-Zilla-Plugin-CriticTests
# 
# This software is copyright (c) 2009 by Jerome Quelin.
# 
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
# 
use strict;
use warnings;

package Dist::Zilla::Plugin::CriticTests;
our $VERSION = '0.1.0';

# ABSTRACT: tests to check your code against best practices

use Moose;
extends 'Dist::Zilla::Plugin::InlineFiles';

no Moose;
__PACKAGE__->meta->make_immutable;
1;





=pod

=head1 NAME

Dist::Zilla::Plugin::CriticTests - tests to check your code against best practices

=head1 VERSION

version 0.1.0

=head1 SYNOPSIS

In your dist.ini:

    [CriticTests]

=head1 DESCRIPTION

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing
the following files:

=over 4

=item * t/author/critic.t - a standard test to check your code against best practices

=back 

This plugin does not accept any option yet.



=head1 AUTHOR

  Jerome Quelin

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Jerome Quelin.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut 



__DATA__
___[ xt/author/critic.t ]___
#!perl

use Test::More;
use English qw(-no_match_vars);

eval "use Test::Perl::Critic";
plan skip_all => 'Test::Perl::Critic required to criticise code' if $@;
all_critic_ok();