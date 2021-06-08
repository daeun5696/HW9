#!/usr/bin/perl
chomp($ip = <STDIN>);
if ($ip =~ /^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$/) {
		print "ip 주소형식입니다.\n";
}
else {
		print "ip 주소형식이 아닙니다.\n";
}
