NR==1 {
		printf("%s\t%s\t", $1, $2)
		for(i = 3; i <= NF; i++) {
			printf("%s\t", $i)
			arr[i-3]=0
			subj+=1
		}
		printf("%s\t%s\n", "총점", "평균")
	  }
NR>1  {
		printf("%s\t%s\t", $1, $2)
		sum = 0
		for(i = 3; i <= NF; i++) {
			printf("%s\t", $i)
			sum += $i
			arr[i-3] += $i
		}
		printf("%d\t%.1f\n", sum, sum/subj)
		count+=1
	  }
END {
		printf("\t\t")
		for(i = 0; i < subj; i++) {
			printf("%.1f\t", arr[i]/count)
		}
		printf("\n")
	}
