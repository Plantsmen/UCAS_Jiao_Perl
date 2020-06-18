#!/user/bin/perl -w

print "Please input your number?\n";
my $number = <STDIN>;
chop($number);

if($1 == $number % 2){
 print "This number is even!\n";
}else{
 print "This number is odd!\n";
}
