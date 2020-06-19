open(IN, "Athaliana.cds.subset.fa");
open(OUT, ">Ath.GCcontent.txt");

my %seq;
while(<IN>){
chomp;
if(/^>(\S+)/)
{
$name=$1;
$name=~s/T/t/;
$name=~s/G/g/;
$name=~s/\.1//g;
$name=~s/\.2//g;
$name=~s/\.3//g;
$name=~s/\.4//g;

}
else{
$seq{$name} .=$_;
}
}
foreach $name(keys(%seq)){
$length=$seq{$name};
$G=$length =~ tr/G/G/;
$C=$length =~ tr/C/C/;
$GC = $G + $C;
$len = length($length);
$content=$GC/$len;

print OUT "$name\t$len\t$content\n";}

close IN;
close OUT;

