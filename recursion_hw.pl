use strict;
use warnings;

sub foo {
	my ( $ref ) = @_;

	if ( ref $ref = 'HASH') {
		for ( keys %$ref ) {
			
		}
	}
	elsif ( ref $ref = 'ARRAY' ) {
		for ( @ref ) {
			
		}
	}

	else {

	}
}


