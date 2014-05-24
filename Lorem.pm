package Lorem;

sub ipsum() {
    return <<LOREM;
Lorem ipsum dolor sit amet, consectetur
adipiscing elit. Nullam porta augue et
mattis egestas. Praesent mollis ultricies
felis. Nullam convallis ligula non
dui elementum porttitor. Duis ultricies
placerat tortor, vel lacinia sem
condimentum ut.
LOREM
}

sub array() {
    return split "\n", ipsum();
}

1;
