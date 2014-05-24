
use Test::More;
use MyCalc;

subtest 'add tests' => sub {
    is MyCalc::add( 2, 3 ), 5;
    is MyCalc::add( 2, 2 ), 5;
} or diag "Your calculator is broken";
subtest 'mult tests' => sub {
    is MyCalc::mult( 2, 3 ), 6;
    is MyCalc::mult( 0, 4 ), 0;
};

done_testing;
