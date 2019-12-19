use strict;
use warnings;

my @arr = ( '{', 'qwerqwer', 'qwerqwer', '}', 'sf', '{', '}', '(', ')');



__END__
my @arr = (123, 'qwerq', 44);
for (@arr) {
    # $_ - специальная переменная. В нее попадет каждое значение массива.
    print "$_\n";
}

for ( my $i = 0; $i < @arr; $i++ ) {
    print "$arr[$i]\n";
}

my @arr = (123, 'qwerq', 44);
my $bar = @arr;  # Массив в скалярном контексте отдает свой размер
                 # Количество эд-тов в массиве

print "mass: @arr, variable bar: $bar\n";
print "$arr[0]\n";

my $foo = 1;
print "$foo";

if ( !1 == 1) { # ! - логическое отрицание. Наивысший приоритет
 #....
}

if ( 'qwer' ne 'qwer' ) { # оператор неэквивалентности строк
    print "unequal\n";
}


if ('qwer' eq 'qwer') { # оператор эквивалентности строк
    print "equal\n";
}


$foo;
if (defined $foo)  { # defined проверяет переменную на undef
   print "1\n";
}


$foo; # по-умолчанию кажждая переменная содержит undef
print "foo is $foo\n";

print "1\n" if $foo;
 # В качестве логической правды може выступать
 # любое число, не равное 0, и любая непустая строка.
 # Также undef является логической ложью.

# так низя
unless(...) {

} elsif () {

} elsif () {

} else {
}


if (2 > 1) {
   print "1\n";
} elsif (1 > 2) {
   print "1\n"; 
} else {
   print "2\n";
}


unless ( 2 == 0 ) { # если не
    print "1234\n";
}

print "123\n" if 1 < 2; # постфиксная форма if
if ( (1 < 2 || 1234 < 0) && 1 == 1)  {
    print "123\n";
}
# && = * и - оно имеет приоритет
# || = + или




$foo = q{qwerqwer};
$bar = q{qwerqwer};

$bar .= $foo; # конкатенация, $bar = $bar . $foo
              # Точно так же работают
              # *=
              # +=
              # /=
              # -=

print "$bar\n";

print 'qwer\n'; # глупые кавычки
print "qwer\n"; # умные кавычки

$foo = 1;
$bar = 'qwer';

$baz = $foo . $bar; # конкатенация строк
$baz = "qwerqwer $foq$bar";

print "$baz\n";


