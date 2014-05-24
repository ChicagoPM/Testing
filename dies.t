
use Dies;
use Test::More;
use Test::Exception;

dies_ok { Dies::dies } 'Poetry :p';
lives_ok { Dies::lives } 'Tomorrow is another day';
throws_ok { Dies::dies } qr{^To be};
throws_ok { Dies::throws } 'Shake::Spear';

done_testing;
