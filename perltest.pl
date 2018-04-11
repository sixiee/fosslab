use strict;

#To read a file.
if($#ARGV != 0)
{
	print STDERR "You must specify exactly one argument.\n";
	exit 4;
}
open(FILE, $ARGV[0]) or die "Cannot open $ARGV[0]: $!.\n";
while(&a = <FILE>)
{
	print $a;
}
close FILE;

