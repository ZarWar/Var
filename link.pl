use strict;
use warnings;

use Data::Dumper;

# ЧАСТЬ 5
sub foo {
	my ($n) = @_;

	if ($n != 1) {
		print "$n";		
	}
}

__END__
# ЧАСТЬ 4

my $h = {};
my $a = [];
my $foo = 1;

# ref - встроенная функция, которая возвращает тип ссылки как строку
print ref($h) . "\n";
print ref($a) . "\n";
print ref($foo) . "\n";

if (ref $h eq 'HASH') {
	print "hash\n";
} elsif (ref $h eq 'ARRAY') {}

$h = { qwer => [1, 2, 3] };
print ref($h->{qwer}) . "\n";


__END__
# ЧАСТЬ 3

my $h = {
	qwer => { qw => 1, er => 2},
	tttt => [
		{
			uuu => 1,
			ggg => 2,
			kkk => 3,
		},
		{ iiii => 4},
		{
			ooo => [1, 2, 3]
		},
	],
};

# print "$h->{tttt}->[2]->{ooo}->[1]\n";
print "$h->{tttt}[2]{ooo}[1]\n";

__END__
my $arr = [1, 2, 3];

my $h = { qwer => $arr };

print Dumper $h;

# обращение к сложным структурам
print "$h->{qwer}->[1]\n";

# приведение к массиву в сложных сруктурах тоже работает
print "@{$h->{qwer}}\n";

__END__
# ЧАСТЬ 2

# анонимный хеш - скаляр, содержащий ссылку на хеш
my $hash = { qwer => 1, asdf => 2};
# аналогично записи
# my %h = ( qwer => 1, asdf => 2);
# my $hash = \%h;

print Dumper $hash;

# анонимный массив - скаляр, содержащий ссылку на массив
my $arr = [1, 2, 3];
# аналогично записи
# my @a = (1, 2, 3);
# my $arr = \@a;

print Dumper $arr;

__END__
# ЧАСТЬ 1
my %h = (
	'qwer', 1,
	'asdf', 2,
);

my @arr = (1, 2, 3);

my $link_h   = \%h;
my $link_arr = \@arr;

# ссылки - это блять скаляры!
print"$link_h $link_arr\n";


# как вытащить из ссылки на хеш значения
print "$link_h->{qwer}\n";

# как вытащить из ссылки на массив значение
print "$link_arr->[0]\n";

# дампер работает с ссылками
print Dumper $link_arr, $link_h;

# чтобы работать с сылкой как с массивом, ее нужно привести к контексту массива
# в этом случае данная конструкция ведет себя полностью как массив, т.е. можно применять все функции массива (push, pop ...)
# с хешами все точно так же
print "@{$link_arr}\n";
my %h_2 = %{$link_h};
print Dumper \%h_2;



