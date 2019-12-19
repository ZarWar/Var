use strict;
use warnings;

use Data::Dumper;

my @week = ('SU', 'MO', 'TH', 'WE', 'TH', 'FR', 'SA');

my %h = (
    SU => 1,
    MO => 2,
    TH => 3,
    WE => 4,
    TH => 5,
    FR => 6,
    SA => 7,
);

#print Dumper\ %h;
#print %h{SU} . "\n";

if ($h{SU} == 1) {
    print "   SU\n"
}



__END__
my @arr = ('asfasd: wert;', 'mclkasdsd: klmk;', 'injagjd: folk;');
my %h;

for (@arr) {
    chop $_;
    my @splitarr = split ': ', $_;
    $h{$splitarr[0]} = $splitarr[1];
}
print Dumper \%h;


__END__
my @week = ('ВС', 'ПН', 'ВТ', 'СР', 'ЧТ', 'ПТ', 'СБ'); #начало домашки про календарь

#my @week = ('SU', 'MO', 'TH', 'WE', 'TH', 'FR', 'SA');

my $days = 48;
my $firstday = (<>);
chop $firstday;

print "@week\n";


__END__
if ($firstday eq 'SU') {
    print "";
    for (my $i = 1; $i < $days + 1; $i++) {
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
    
}

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
    







__END__
my @week = ('ВС', 'ПН', 'ВТ', 'СР', 'ЧТ', 'ПТ', 'СБ');
print "@week\n";

my $days = 31;
my $firstday = 'ВС';

for (my $i = 1; $i < $days + 1; $i++) {
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



__END__
my $a = int(<>);
my $b = int(<>);
my $c = int(<>);
my $x1;
my $x2;
my $D;

if ($a == 0) {
    print "это не квадратное уравнение\n"
}
elsif ($b == 0 && $c == 0) {
    print "x = 0\n"
}
elsif ($b == 0) {
    if ($c < 0 && $a > 0 || $c > 0 && $a < 0)  {
        $x1 = (-$c/$a) ** 0.5;
        $x2 = -$x1;
        print "x1 = $x1 x2 = $x2\n";
        #print "уравнение не имеет решения\n"
    } else {
        print "уравнение не имеет решения\n"
    }
}

elsif ($c == 0) {
    $x1 = -$b/$a;
    $x2 = 0;
    print "x1 = $x1 x2 = $x2\n";
}

else {
    $D = ($b ** 2) - 4 * ($a * $c);
    if ($D > 0) {
        $x1 = ($D ** 0.5 - $b)/(2*$a);
        $x2 = (-$D ** 0.5 - $b)/(2*$a);
        print "x1 = $x1 x2 = $x2\n";
    } elsif ($D == 0) {
        $x1 = -$b/(2*$a);
        print "x1 = $x1\n";
    } else {
        print "решения нет\n" 
    }
}



__END__
my @arr = (1, 2, 3, 4, 5, 6, 7, 8);
my $half = @arr/2;
my $count = @arr;
for (my $i = 0; $i < $half; $i++) {
    print $arr[$i] + $arr[$count - $i - 1] ."\n";   
}





__END__
my @arr = (2, 5, 3, 6, 4, 7);
my $maxarr = $arr[0];
my $minarr = $arr[1];

for (my $i = 0; $i < @arr; $i++) {
    if ($arr[$i] > $maxarr) {
        $maxarr = $arr[$i];
    }  
    if ($arr[$i] < $minarr) {
        $minarr = $arr[$i];
    }
}

print $maxarr + $minarr ."\n";



__END__
my @arr = (2, 5, 3, 6, 4, 7);
my $summ;
my $mult = 1;

for (my $i = 0; $i < @arr; $i++) {
    if (($i % 2) != 0) {
        $summ += $arr[$i]
    }   else {
        $mult *= $arr[$i]
    }
}

print "$summ $mult\n";

my $x2;
my $D;

if ($a == 0) {
    print "это



__END__
my @arr1 = (1, 2, 3);
my @arr2 = (1, 2, 3);
my @arr3 = (2, 2, 3);
my $mult;

for (my $i = 0; $i < @arr1; $i++) {
    my $mult = $arr1[$i] * $arr2[$i] * $arr3[$i];
    print "$mult ";
}
print "\n";  




__END__
my @arr1 = (1, 2, 3, 4, 5);
my @arr2 = (6, 7, 8, 9, 10);
my @arr3 = (11, 12, 13, 14, 15);
my $equal;

for (my $i = 0; $i < @arr1; $i++) {
    for (my $j = 0; $j < @arr2; $j++) {
            for (my $k = 0; $k < @arr3; $k++) {
                if ($arr1[$i] == $arr2[$j] && $arr2[$j] == $arr3[$k]) {
                $equal = 1;
            }               
        }
    }
}

if ($equal) {
    print "True\n";
} else {
    print "False\n";
}
   


__END__
my @arr1 = (1, 2, 3);
my @arr2 = (4, 5, 6);


for (my $i = 0; $i < @arr1; $i++) {
    my $arr3 = $arr1[$i] * $arr2[$i];
    print "$arr3 ";
}
print "\n";  
   




__END__


__END__
my @arr = (2, 5, 3, 6, 4, 7);
my $maxarr = $arr[0];
my $minarr = $arr[1];

for (my $i = 0; $i < @arr; $i++) {
    if ($arr[$i] > $maxarr) {
        $maxarr = $arr[$i];
    }  
    if ($arr[$i] < $minarr) {
        $minarr = $arr[$i];
    }
}

print $maxarr + $minarr ."\n";



__END__
my @arr = (2, 5, 3, 6, 4, 7);
my $summ;
my $mult = 1;

for (my $i = 0; $i < @arr; $i++) {
    if (($i % 2) != 0) {
        $summ += $arr[$i]
    }   else {
        $mult *= $arr[$i]
    }
}

print "$summ $mult\n";




__END__
my @arr1 = (1, 2, 3);
my @arr2 = (1, 2, 3);
my @arr3 = (2, 2, 3);
my $mult;

for (my $i = 0; $i < @arr1; $i++) {
    my $mult = $arr1[$i] * $arr2[$i] * $arr3[$i];
    print "$mult ";
}
print "\n";  




__END__
my @arr1 = (1, 2, 3, 4, 5);
my @arr2 = (6, 7, 8, 9, 10);
my @arr3 = (11, 12, 13, 14, 15);
my $equal;

for (my $i = 0; $i < @arr1; $i++) {
    for (my $j = 0; $j < @arr2; $j++) {
            for (my $k = 0; $k < @arr3; $k++) {
                if ($arr1[$i] == $arr2[$j] && $arr2[$j] == $arr3[$k]) {
                $equal = 1;
            }               
        }
    }
}

if ($equal) {
    print "True\n";
} else {
    print "False\n";
}
   


__END__
my @arr1 = (1, 2, 3);
my @arr2 = (4, 5, 6);


for (my $i = 0; $i < @arr1; $i++) {
    my $arr3 = $arr1[$i] * $arr2[$i];
    print "$arr3 ";
}
print "\n";  
   




__END__
use strict;
use warnings;
#найти сумму всех элементов между минимальным и максимальным
my @arr = (500, 100, 200, 150, 160);
my $maxarr = 0;
my $minarr = 0;
my $sum = 0;

for (my $i = 0; $i < @arr; $i++ ) {
    if ($arr[$i] > $arr[$maxarr]) {
        $maxarr = $i;
    }
    if ($arr[$i] < $arr[$minarr]) {
        $minarr = $i;
    }
}

if ($minarr < $maxarr) {
    for (my $i = $minarr+1; $i < $maxarr; $i++ ) {
        $sum += $arr[$i];
    }           
}

else {
   for (my $i = $maxarr+1; $i < $minarr; $i++ ) {
        $sum += $arr[$i];
    }           
} 

print "$sum\n";    



my @arr = (-30, 100, 150, -30, -20, -30);
my $a = 0;
my $b = 0;
for (my $i = 0; $i < @arr; $i++ ) {
    if ($arr[$i] <= $arr[$b]) {
        $b = $i;
    }
}

for (my $i = 0; $i < $b; $i++) {
    $a += $arr[$i];
}
print "$a\n";




__END__
my @arr = (10, 2, 100, -65, -1);
my $maxarr = $arr[0];
for ( my $i = 0; $i < @arr; $i++ ) {
    if ($arr[$i] > $maxarr) {
        $maxarr = $i;                
    }
}

for ( my $i = 0; $i < @arr; $i++ ) {
    if ($maxarr < $i) {
        print "$arr[$i]\n";
    }
}
#print "$maxarr\n"



my $foo = int(<>);
my $bar = int(<>);
my $doo = int(<>);

if ($foo >= $bar && $bar >= $doo) {
    print "$doo, $bar, $foo\n"
}
elsif ($doo >= $bar && $bar >= $foo) {
    print "$foo, $bar, $doo\n"
}
elsif ($bar >= $foo && $foo >= $doo) {
    print "$doo, $foo, $bar\n"
}
elsif ($bar >= $doo && $doo >= $foo) {
    print "$foo, $doo, $bar\n"
}
elsif ($doo >= $foo && $foo >= $bar) {
    print "$bar, $foo, $doo\n"
}
elsif ($foo >= $doo && $doo >= $bar) {
    print "$bar, $doo, $foo\n"
}






_
my @arr = (10, 2, 100, -65, -1);
my $maxarr = $arr[0];
for ( my $i = 0; $i < @arr; $i++ ) {
    if ($arr[$i] > $maxarr) {
        $maxarr = $i;                
    }
}

for ( my $i = 0; $i < @arr; $i++ ) {
    if ($maxarr < $i) {
        print "$arr[$i]\n";
    }
}
#print "$maxarr\n"





my @arr = (-100, -2, -20, -65, 1);
my $maxarr = $arr[0];
for (@arr) {
    if ($_ > $maxarr) {
        $maxarr = $_;
    }   
}
print "$maxarr\n"




for (@arr) {
    if ($_ >= 5) {
        print "$_\n";
    }
}





my @arr = ('(', '100', ')');
my $arr1 = '(';
my $arr2 = ')';

for(@arr) {
	if ('(' eq $_) {
		print "$_\n";
		$arr1 = '(';
	}

    if (')' eq $_) {
		print "$_\n";
		$arr2 = ')';
	}
}
