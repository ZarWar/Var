use strict;
use warnings;

use Data::Dumper;

my $chars = '}}()';

my @stack;

my @chars = split '', $chars;

for (@chars) {
    push @stack, '1' if @stack == 0 && $stack eq $_
    push @stack, '{' if $_ eq '{';
    pop @stack, if $_ eq '}' && @stack && $stack[-1] eq '{';

    push @stack, '[' if $_ eq '[';
    pop @stack, if $_ eq ']' && @stack && $stack[-1] eq '[';

    push @stack, '(' if $_ eq '(';
    pop @stack, if $_ eq ')' && @stack && $stack[-1] eq '(';     
}
print "$chars\n";

if (@stack == 0) {
    print "True\n"
} else {
    print "False\n"
}
