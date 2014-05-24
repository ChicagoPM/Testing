
use Test::More;
use Test::Deep;

use Simpsons;

cmp_deeply Simpsons::names, [ 'Homer', 'Marge' ];
cmp_deeply Simpsons::names, bag( 'Marge', 'Homer' );
cmp_deeply Simpsons::names, superbagof( 'Homer' );
cmp_deeply Simpsons::names, subbagof( 'Homer', 'Marge', 'Bart' );

cmp_deeply Simpsons::names, [ 'Homer', 'Marge', 'Bart' ];
cmp_deeply Simpsons::names, [ 'Marge', 'Homer' ];

done_testing;
