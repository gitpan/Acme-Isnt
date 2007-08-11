use strict;
use warnings;
use Test::More tests => 2;
use Acme::Isn't;
use lib qw(t/lib);
use TestClass;

my $foo = TestClass->new();
is($foo->isn't('TestClass'), 0, '$foo ISA TestClass');
is($foo->isn't('CGI'), 1, '$foo IS NOT a CGI');
