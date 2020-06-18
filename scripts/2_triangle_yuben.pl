#!/user/bin/perl -w
$number = $ARGV[0];
#print "Please input your number?\n";
#my $number = <STDIN>;
#chomp($number);


$i = $number % 2;
#$j = 0;
if($i == 1){
do {
 print "Please input the even number!\n";
#$j ++;
$number = <STDIN>;
# chomp($number);      
$i =$number % 2;
}while  ($i == 1)
}else{

}

print "triangle $number\n";

#open(triangle, ">triangle.txt") or die "triangle.txt 文件无法打开, $!\n";
#print d "hello,world\nsee you\n";
#close(triange);

$k = $number /2 -2;
for (0..$k) {
   $p1=" "x (40-$_);
   $p2="T"x ($_ + 2);
   $p3="A"x ($_ + 2);
   print "$p1$p2$p3\n";
           }
