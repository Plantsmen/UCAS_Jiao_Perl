#!/user/bin/perl -w
use strict;

open (IN, "Ath.len.GC.txt");
open (OUT, ">Ath.len.GC.over0.45.txt");
my @list;
my $percentage;
while (my $i = <IN>) {
    chomp ($i);
    @list = split (/\t/, $i);
    $percentage = $list[2];
    if ($percentage > 0.45) {
        print OUT "$list[0]\t$list[2]\n";
    }
}
close (IN);
close (OUT);
