
use Lorem;
use Test::More;
use Test::Differences;

eq_or_diff( Lorem::ipsum, <<LOREM );
Gollum ipsum dolor sit amet, consectetur
adipiscing elit. Nullam porta augue et
mattis egestas. Praesent mollis ultricies
felis. Nullam convallis ligula non
dui elementum porttitor. Duis ultricies
placerat tortor, vel lacinia sem
condimentum ut.
LOREM

eq_or_diff(
    [ Lorem::array ],
    [
        'Gollum ipsum dolor sit amet, consectetur',
        'adipiscing elit. Nullam porta augue et',
        'mattis egestas. Praesent mollis ultricies',
        'felis. Nullam convallis ligula non',
        'dui elementum porttitor. Duis ultricies',
        'placerat tortor, vel lacinia sem',
        'condimentum ut.',
    ],
);

done_testing;
