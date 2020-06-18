#!/user/bin/perl -w
use strict;

my %GC_content; # id => GC hash1 storage id and GC content
my %sequence; # id=>sequence hash2 storge id and base num
my ($id, $GC_sum); 
my @num; #temp var, storge string num one line

while(my $seq = <>)
# <> line=>$seq
{
    chomp($seq);
    if($seq =~ m/^>(.*)/) #mach the >
    {
        $id = $1;
        next;
    }
    @num = ($seq =~ m/(G|C)/g);
    $GC_content{$id} += @num; #statis seq GC num

    @num = ($seq =~ m/(.)/g);
    $sequence{$id} += @num;
}


        printf("$id", $_, $GC_content{$_} );
        # 如果“>=”，打印该序列的：id，GC含量，more
        printf("%s\t%.6f\tsmall\n", $_, $GC_content{$_} );
        # 如果“<”，打印该序列的：id，GC含量，less

