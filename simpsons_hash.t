
use Test::More;
use Data::Dumper;
use Test::Deep;

use Simpsons;

cmp_deeply Simpsons::homer, { age => 40, aliases => [ 'Mr. Plow', 'Max Power' ] };
cmp_deeply Simpsons::marge, { age => 34, aliases => [ ] };

cmp_deeply Simpsons::homer, { age => 40, aliases => bag( 'Max Power', 'Mr. Plow' ) };
cmp_deeply Simpsons::marge, { age => 34, aliases => ignore() };

cmp_deeply
    Simpsons::all,
    bag(
        { age => 34, aliases => [] },
        { age => 40, aliases => [ 'Max Power' ] },
    )
    or diag Dumper Simpsons::all;

# All ages must be integers
cmp_deeply
    Simpsons::all,
    array_each( superhashof( { age => re( qr(^\d+$) ) } ) );

done_testing;
