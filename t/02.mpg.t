use strict;
use Test::More tests => 6;

use Movie::Info;

my $mi;
my %info;
ok($mi = Movie::Info->new, 'Instantiated ok');
ok(%info = $mi->info('t/files/test.mpg'), 'Read info from file ok');
is($info{filename}, 't/files/test.mpg', 'Got filename');
is($info{width}, 381, 'Got width');
is($info{height}, 382, 'Got height');
is(int($info{fps}), 25, 'Got fps');

