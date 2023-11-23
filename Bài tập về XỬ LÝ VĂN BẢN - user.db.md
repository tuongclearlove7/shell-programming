```shell


Cho file user.db có cấu trúc như sau:
Cột 1: Username
Cột 2: Password đã được mã hóa
Cột 3: NgaySinh	//dd/mm/yyyy
Cột 3: Email
Các cột cách nhau bởi dấu hai chấm.
Nội dung file:
u1:698d51a19d8a121ce581499d7b701668:15/04/2000:u1@gmail.com
u2:bcbe3365e6ac95ea2c0343a2395834dd:30/07/1999:u2dtu@yahoo.com
u3:310dcbbf4cce62f762u2aaa148d556bd:06/07/1998:u3dtu@dtu.edu.vn
u4:550a141f12de6341fba65b0ad0433500:04/06/2001:u4@gmail.com
...(giả sử file này có vài chục nghìn dòng)
Yêu cầu: Anh/chị hãy viết các câu lệnh lọc thực hiện các yêu cầu sau

1) Cho biết user u2 có tồn tại không?
cmd : cat user.txt | grep "^u2

2) Cho biết NgaySinh của user u3?
cmd : cat user.txt | awk -F: '$1=="u3" {print $3}'

3) Cho biết Password của user u4?
cmd : cat user.txt | awk -F: '$1=="u4" {print $2}'


4) Cho biết nickname của user u1? Nickname là chuỗi đứng phía trái dấu @ trong Email.
cmd : cat user.txt | awk -F: '$1=="u1" {split($4, a, "@"); print a[1]}'

5) Cho biết danh sách các user có NgaySinh là ngày hiện tại?
cmd : cat user.txt | awk -F: -v today=$(date +"%d/%m/%Y") '$3==today'

6) Sắp xếp danh sách user tăng dần theo tuổi?
cmd : cat user.txt | awk -F: '{print $3, $0}' | sort -t'/' -k3n | cut -d' ' -f2-

7) Sắp xếp danh sách user giảm dần theo cột username?
cmd: cat user.txt | sort -r -t: -k1,1

8) Cho biết có bao nhiêu user dùng Email có domain name là dtu.edu.vn? 
cmd: cat user.txt | grep "@dtu.edu.vn" | wc -l

9) Cho biết năm sinh của user u2?
cmd: cat user.txt | awk -F: '$1=="u2" {split($3, a, "/"); print a[3]}'


```



