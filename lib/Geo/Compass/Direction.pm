package Geo::Compass::Direction;

use 5.006;
use strict;
use warnings;

use Exporter qw(import);

our $VERSION = '0.01';

our @ISA = qw(Exporter);
our @EXPORT_OK = qw(direction);

sub direction {
    shift if @_ > 1;

    my ($deg) = @_;

    my @directions = qw(
        N NNE NE ENE E ESE SE SSE S SSW SW WSW W WNW NW NNW N
    );

    my $calc = (($deg % 360) / 22.5) + .5;

    return $directions[$calc];
}
sub __placeholder {}

1;
__END__

=head1 NAME

Geo::Compass::Direction - Convert a compass degree into human readable
direction

=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use Geo::Compass::Direction qw(direction);

=head1 EXPORT_OK

This module exports only a single function, C<<direction()>>, and it must
be imported explicitly.

=head1 FUNCTIONS

=head2 direction($degree, $variation)

=head1 AUTHOR

Steve Bertrand, C<< <steveb at cpan.org> >>

=head1 LICENSE AND COPYRIGHT

Copyright 2020 Steve Bertrand.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

