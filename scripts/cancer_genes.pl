#usr/bin/perl -w
use strict;

open (IN,"cancer_genes.txt");
my %cancer;
while (my $string = <IN>){
    chomp $string;
    $cancer{$string} = 1;
}

print "Please input the gene name.\n";
my $gene = <STDIN>;
chomp $gene;
if (exists $cancer{$gene}){
    print "Yes, it is a cancer related gene.\n";
}else{
    print "No, it is a nomeal gene.\n";
}
