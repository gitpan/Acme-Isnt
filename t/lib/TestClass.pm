package TestClass;
use strict;
use warnings FATAL => 'all';

sub new
{
    my $class = shift;
    my $self = {};
    bless $self, $class;
}

1;
