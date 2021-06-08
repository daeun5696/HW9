#!/usr/bin/perl
open(FILE, "@ARGV");
@line = <FILE>;

$first = shift(@line);
chomp($first);
printf "%s\t총점\t평균\n", $first;
$num = scalar(split(/\t/, $first))-2;
for($i = 0; $i<$num;$i++) {
		@arr[$i] = 0;
}
$cnt = 0;
foreach $lines (@line){
		$cnt+=1;
		chomp($lines);
		@words = split(/\t/, $lines);
		printf "%d\t%s\t", shift(@words), shift(@words);
		$sum = 0;
		for($i = 0; $i < $num; $i++) {
			printf "%d\t", $words[$i];
			$score[$i] += $words[$i];
			$sum += $words[$i];
        }			
		printf "%d\t%.1f\n", $sum, $sum/$num;
}
printf "\t\t";
foreach $list (@score) {
		printf "%.1f\t", $list/$cnt;
}
printf "\n";
