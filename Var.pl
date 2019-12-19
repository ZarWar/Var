use strict;
use warnings;

use Data::Dumper;

my @fathers = ('Bill', 'Alex', 'Fred');
my @sons = ('Lesha Fredson', 'Mitya Alexson', 'Sergey Billson');


sub Foo {
    my $nameoff = $_[0].'son';
    
    for (@sons) {
        my (undef, $surname) = split ' ', $_;
        return $_ if $nameoff eq $surname;
    }
    return undef;
}

my %h;

for (@fathers) {
    my $son = Foo($_);
    $h{$_} = $son if $son;
}
print Dumper \%h;