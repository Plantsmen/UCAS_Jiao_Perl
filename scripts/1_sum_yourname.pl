#!/usr/bin/perl -w
use strict;
open(my $IN, <number.txt>) or die ("Can not open number.txt for reading: $!\n");
my $sum = 0;

while (my $line = <$IN>) {
      $sum += $line;
}
print "The sum of value is $sum\n";

