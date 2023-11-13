```shell

lệnh xem các file folder trong thư mục đang đứng
ls, ls -l, tree
lệnh vào thư mục
cd hello
lệnh thoát ra khỏi thư mục đang đứng
cd ..
Lệnh tạo folder 
mkdir hello
lệnh tạo file
vi hello.sh
lệnh xem thông tin file 
ls -l hello.sh
lệnh Xóa thư mục 
rm -rf hello
lệnh xóa file
rm -f hello.sh
lệnh đọc file
cat hello.sh
lệnh đổi đuổi mở rộng của tất cả các file trên folder đang đứng
ví dụ: .txt đổi sang -> .md
for file in *.txt; do
    mv "$file" "${file%.txt}.md"
done

``````

