package Dies;

sub dies {
    die "To be or not to be!";
}

sub lives {
    "To be!";
}

sub throws {
    die bless {}, 'Shake::Spear';
}

1;
