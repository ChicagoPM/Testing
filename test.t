
use Test::More;
use MyCalc;

# Add tests
is MyCalc::add( 2, 3 ), 5;
cmp_ok MyCalc::add( 2, 2 ), '<', 5;
isn::t MyCalc::add( 2, 2 ), 5;

# Multiplication tests
is MyCalc::mult( 2, 3 ), 6;

done_testing;
