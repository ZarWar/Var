use strict;
use warnings;

my @week = ('SU', 'MO', 'TH', 'WE', 'TH', 'FR', 'SA'); #начало домашки про календарь

my $days = 48;
my $firstday = (<>);
chop $firstday;

print "@week\n";

if ($firstday eq 'SU') {
    print "";
    for (my $i = 1; $i < $days + 1; $i++) {
        if ($i == [6]) {
            print " $i\n"
        } elsif ($i % 7 == 0) {
            print "$i\n"
        } elsif ($i < 10) {
            print " $i " 
        } else {
            print "$i "
        }
    }       
    
}
__END__
elsif ($firstday eq 'ПН') {
    print "   ";
        for (my $i = 1; $i < $days + 1; $i++) {
            if ($i == 6) {
                print " $i\n"
        } elsif (($i + 1) % 7 == 0) {
            print "$i\n"
        } elsif ($i < 10) {
            print " $i " 
        } else {
            print "$i "
        }
    }   
}

elsif ($firstday eq 'ВТ') {
    print "      ";
    for (my $i = 1; $i < $days + 1; $i++) {
        if ($i == 5) {
            print " $i\n"
        } elsif (($i + 2) % 7 == 0) {
            print "$i\n"
        } elsif ($i < 10) {
            print " $i " 
        } else {
            print "$i "
        } 
    }    
}

elsif ($firstday eq 'СР') {
    print "         ";
    for (my $i = 1; $i < $days + 1; $i++) {
        if ($i == 4) {
            print " $i\n"
        } elsif (($i + 3) % 7 == 0) {
            print "$i\n"
        } elsif ($i < 10) {
            print " $i " 
        } else {
            print "$i "
        } 
    }
}

elsif ($firstday eq 'ЧТ') {
    print "            ";
    for (my $i = 1; $i < $days + 1; $i++) {
        if ($i == 3) {
            print " $i\n"
        } elsif (($i + 4) % 7 == 0) {
            print "$i\n"
        } elsif ($i < 10) {
            print " $i " 
        } else {
            print "$i "
        } 
    }
}

elsif ($firstday eq 'ПТ') {
    print "               ";
    for (my $i = 1; $i < $days + 1; $i++) {
        if ($i == 2 || $i == 9) {
            print " $i\n"
        } elsif (($i + 5) % 7 == 0) {
            print "$i\n"
        } elsif ($i < 10) {
            print " $i " 
        } else {
            print "$i "
        } 
    }
}

elsif ($firstday eq 'СБ') {
    print "                  ";
    for (my $i = 1; $i < $days + 1; $i++) {
        if ($i == 1 || $i == 8) {
            print " $i\n"
        } elsif (($i + 6) % 7 == 0) {
            print "$i\n"
        } elsif ($i < 10) {
            print " $i " 
        } else {
            print "$i "
        } 
    }
}

print "\n"; #конец домашки про календарь

__END__
elsif ($firstday eq 'СР') {
    print "     "
}

elsif ($firstday eq 'ЧТ') {
    print "     "
}

elsif ($firstday eq 'ПТ') {
    print "     "
}

else ($firstday eq 'СБ') {
    print "     "
}

print "\n";


__END__
for ($i = 1; $i < $days + 1; $i++) {
    if ($i == 7) {
        print " $i\n"
    } elsif ($i % 7 == 0) {
        print "$i\n"
    } elsif ($i < 10) {
        print " $i " 
    } else {
        print "$i "
    }
}   
   
print "\n";