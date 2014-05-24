package Simpsons;

sub names {
    return [ qw( Homer Marge ) ];
}

sub homer {
    return {
        age => 40,
        aliases => [ 'Mr. Plow', 'Max Power' ],
    }
}

sub marge {
    return {
        age => 34,
        aliases => [ ],
    }
}

sub all {
    return [ homer(), marge() ];
}

1;
