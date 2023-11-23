```shell

lenh xem thu muc dang dung
pwd

lệnh xem các file folder trong thư mục đang đứng
ls, ls -l, tree

lệnh vào thư mục
cd hello

lệnh thoát ra khỏi thư mục đang đứng
cd ..

Lệnh tạo folder 
mkdir hello

lệnh tạo file rỗng
touch hello

lệnh tạo file
vi hello.sh

lenh truy cap vao file da tao
vi hello.sh

lệnh xem thông tin file 
ls -l hello.sh

lệnh Xóa thư mục 
rm -rf hello

lệnh xóa file
rm -f hello.sh

lệnh đọc file
cat hello.sh hoac less hello.sh va bam ctrl z de thoat

soan thao trong file
bam i

luu file va thoat file
bam esc go :wq!

dung lenh  gan quyen de thuc thi file khi file chua co quyen thuc thi 
chmod u+x hello.sh

lenh thuc thi file 
./hello.sh



lệnh đổi đuổi mở rộng của tất cả các file trên folder đang đứng
ví dụ: .txt đổi sang -> .md
for file in *.txt; do
    mv "$file" "${file%.txt}.md"
done

``````

