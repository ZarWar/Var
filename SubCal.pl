use strict;
use warnings;

use Data::Dumper;

sub Months {
    my ($days, $firstday, $month, $year) = @_;

    my $monthyear = $month . ' ' . $year;
    my $string_len = length($monthyear);
    my $afterspace = (20 - $string_len) / 2;
    print ' ' x $afterspace . $monthyear . ' ' x $afterspace . "\n";

    my @week = ('SU', 'MO', 'TU', 'WE', 'TH', 'FR', 'SA');
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
}

Months (31, 'MO', 'December', '2019');
