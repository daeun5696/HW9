#!/usr/bin/perl
%freq = ();
chomp($word = <STDIN>);
until ($word eq 'q') {
		$freq{$word} += 1;
		chomp($word = <STDIN>);
}
while(($key,$val) = each %freq) {
		printf "%s => %d\n", $key, $val;
}
