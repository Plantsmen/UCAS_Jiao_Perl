#!/user/bin/perl -w
use strict;

my %GC_content; # id => GC hash1 storage id and GC content
my %sequence; # id=>sequence hash2 storge id and base num
my ($id, $base_sum, $GC_sum); 
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
    @GC_content{$id} += @num; #statis seq GC num
}

foreach(keys(%GC_content))  # 遍历哈希
{
    if(($GC_content{$_} / $sequences{$_}) >= ($gc_sum / $base_sum))
    # 比较某序列GC含量与总文件GC含量的大小
    {
        printf("%s\t%.6f\tmore\n", $_, $GC_content{$_} / $sequences{$_});
        # 如果“>=”，打印该序列的：id，GC含量，more
    }
    else
    {
        printf("%s\t%.6f\tsmall\n", $_, $GC_content{$_} / $sequences{$_});
        # 如果“<”，打印该序列的：id，GC含量，less
    }
}
