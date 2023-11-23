cat user.txt | grep "^u2


cat user.txt | awk -F: '$1=="u3" {print $3}'