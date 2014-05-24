package TestsFor::MyCalc;

use Test::Class::Moose;
use MyCalc;

sub test_add {
    is MyCalc::add( 2, 3 ), 5;
    is MyCalc::add( 2, 2 ), 4;
}
sub test_mult {
    is MyCalc::mult( 2, 3 ), 6;
    is MyCalc::mult( 0, 4 ), 0;
}

1;
