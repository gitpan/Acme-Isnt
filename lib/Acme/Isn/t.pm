package Acme::Isn't;

use 5.00307; # for UNIVERSAL
use strict;
use warnings;

use UNIVERSAL qw/isa/;

our $VERSION = '0.01';

sub isn't ($$;$)
{
    my $self = shift;
    my $class = shift;
    $self->isa($class) ? 0 : 1;
}

1;
__END__

=head1 NAME

Acme::Isn't - Determine whether your objects are B<NOT> a certain class.

=head1 SYNOPSIS

    use Acme::Isn't;
    use Some::OO::Module;
    my $obj = Some::Other::OO::Module->new();
    die EDOOFUS if $obj->isn't('Some::OO::Module');

=head1 DESCRIPTION

This module allows a programmer to determine conclusively whether their
objects are not of a certain type. This sort of test can be useful to
e.g. programmatically enforce inheritance hierarchies. This allows for
much cleaner code than using unless and isa.

=head1 USAGE

C<Acme::Isn't> is a bit magical. You can use the C<isn't> method on any
object you create, and just pass it a class name that you want to ensure
that your object is not. C<isn't> returns 1 if true, 0 if false.

=head1 ACKNOWLEDGEMENTS

This module was almost wholly inspired by Damian Conway's L<Acme::Don't>
module.

=head1 AUTHOR

Christopher Nehren, E<lt>apeiron@cpan.org<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2007 by Christopher Nehren

The author hereby releases this library into the public domain.

The author hereby disclaims all responsibility for any usage of this
library in any code whatsoever. If you're silly enough to use this code,
you deserve whatever you get. :-)

=cut
