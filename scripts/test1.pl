#!/usr/bin/perl -w
use strict;
my $string;
$ARGV[0];

my $string1=$ARGV[0];
my $string1=~/(AGCT\d)(\n)(\w+)(\n)/;
print "$1\t$3\n";
