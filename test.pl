# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; }
END {print "not ok 1\n" unless $loaded;}
use Statistics::Lite ':all';
$loaded = 1;
print "ok 1\n";

######################### End of black magic.

# Insert your test code below (better if it prints "ok 13"
# (correspondingly "not ok 13") depending on the success of chunk 13
# of the test code):

use Test;
BEGIN { plan tests => 20 }

ok(min(1,2,3),1);
ok(max(1,2,3),3);
ok(range(1,2,3),2);
ok(sum(1,2,3),6);
ok(count(1,2,3),3);

ok(mean(1,2,3),2);
ok(median(1,2,3),2);
ok(mode(1,2,3),2);

ok(variance(1,2,3),1);
ok(stddev(1,2,3),1);

my %stats= statshash(1,2,3);

ok($stats{min},1);
ok($stats{max},3);
ok($stats{range},2);
ok($stats{sum},6);
ok($stats{count},3);

ok($stats{mean},2);
ok($stats{median},2);
ok($stats{mode},2);

ok($stats{variance},1);
ok($stats{stddev},1);
