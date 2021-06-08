BEGIN	{ printf "학번\t이름\t국어\t수학\t영어\t총점\t평균\n" }
        { if(NR>=2) {
				count++;
				kor += $3; math += $4; eng += $5;
				sum = ($3 + $4 + $5);
				avg = ($3 + $4 + $5)/3;
				printf "%d\t%s\t%d\t%d\t%d\t%d\t%.1f\n", $1, $2, $3, $4, $5, sum, avg;
		  }
		}
END		{ if (count>0) {
				kor /= count; math /= count; eng /= count;
				printf "\t\t%.1f\t%.1f\t%.1f\n", kor, math, eng;
		  }
		}
