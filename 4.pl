#!/usr/bin/perl -w
use strict;
open(IN1,"Ath.1.txt");
open(IN2,"Ath.2.txt");
open(OUT,">Ath.1.2.txt");
my @line1;
my %hash1;
while(<IN1>){
@line1 = split /\s+/, $_;
$hash1{$line1[0]} = $line1[1];
}
my @line2;
my %hash2;
while(<IN2>){
@line2 = split /\s+/, $_;
$hash2{$line2[0]} = $line2[1];
}
my $ID;
my $length;
my $GC;
foreach $ID(keys(%hash1)){
$length=$hash1{$ID};
if(exists $hash2{$ID}){
$GC = $hash2{$ID};
print OUT "$ID\t $length\t$GC\n";
}
}
close(IN1);
close(IN2);
close(OUT);

