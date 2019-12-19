use strict;
use warnings;

my @arr = (1, 2, 3, 4, 5, 6234, 9, 31, -66, 90, 675);
my $maxarr = 0;

for ( my $i = 0; $i < @arr; $i++ ) {
	if ( $arr[$i] > $arr[$maxarr] ) {
		$maxarr = $i;
	}
}

for ( my $i = 0; $i < @arr; $i++ ) {
	if ($i > $maxarr) {
		print "$arr[$i]\n";
	}
}

print "$maxarr\n";
