use strict;
use warnings;

use Data::Dumper;

my @week = ('SU', 'MO', 'TU', 'WE', 'TH', 'FR', 'SA');
my $days = 31;
my $firstday = (<>);
chop $firstday;
print "@week\n";

my %h = (
    SU => 0,
    MO => 1,
    TU => 2,
    WE => 3,
    TH => 4,
    FR => 5,
    SA => 6,
);

my $gap = $h{$firstday};
print ('   ' x $gap);

for (my $i = 1; $i <= $days; $i++) {
    my $real = $i + $gap;
    if ($i < 10) {
        print " $i";
    } else {
        print "$i";
    }

    if ($real % 7 == 0) {
        print "\n"; 
    } else {
        print " ";
    }
}

print "\n";


