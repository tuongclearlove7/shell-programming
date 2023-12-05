```shell
example : test.txt 

James 25
Sandy 20
William 26
Alice 27
Steve 22
John 24
Jamie 45


filter 

cmd : cat test.txt | grep "James"

cmd : cat test.txt | wc -l

cmd : cat test.txt | wc -w

cmd : cat test.txt | wc -c

filter password

cmd : cat /etc/shadow

cmd : cat /etc/shadow | grep "^tuongclearlove7:"

cmd : cat /etc/shadow | grep "^tuongclearlove7:" | cut -d':' -f1,2

cmd : cat /etc/shadow | grep "^tuongclearlove7:" | cut -d':' -f1,2 | cut -d'$' -f4

Cho biết user sinhvien login vào lúc nào?

cmd : who | grep "^tuongclearlove7 " | tr -s " " | cut -d' ' -f4

Sắp xếp file sach.db giảm dần theo cột số 5 (price)?

cmd : cat sach.db | sort -t':' -k5 -nr

Lệnh cho biết số phiên làm việc của mỗi user trên hệ thống?

cmd : who | cut -d' ' -f1 | sort | uniq -c

Lenh cho biet home dir of user 
cmd : cat /etc/passwd | grep ^tuong: | cut -d':' -f6

lenh cho biet danh sach cacs user cung nhom co GID=501?
cmd: cat /etc/passwd | cut -d':' -f1,4 | grep -w 501

lenh quan sat GID cua CS226
cmd: cat /etc/group | grep "^CS226:"

//Tạo vài user & cho vào nhóm CS226
cmd: useradd sv1 -g CS226
cmd: useradd sv2 -g CS226
cmd: useradd sv3 -g CS226

lenh loc id cua group
cmd: cat /etc/group | grep "^CS226:"

lenh loc id cua cua user trong group
cmd: cat /etc/passwd | cut -d':' -f1,4 | grep -w 1001


cat user.txt | grep "^u2

cat user.txt | awk -F: '$1=="u3" {print $3}'




```



