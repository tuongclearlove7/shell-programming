#!/bin/bash

# thong tin ve người đang đăng nhập
current_user=$(whoami)
echo "Ban dang dang nhap user: $current_user"

# thong tin ve Hostname
host_name=$(hostname)
echo "Hostname: $host_name"

# Phien ban kernel
kernel_version=$(uname -r)
echo "Phien ban kernel: $kernel_version"

# Dia chi IP cua may
ip_address=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*')
echo "Dia chi IP cua may: $ip_address"

# "Thoi gian hien tai (hh:mm:ss)
current_time=$(date +"%T")
echo "Thoi gian hien tai (hh:mm:ss): $current_time"

#  ngay hien tai (dd/mm/yyyy)
current_date=$(date +"%d/%m/%Y")
echo "ngay hien tai (dd/mm/yyyy): $current_date"

# ngay trong tuan (weekday)
current_day=$(date +"%A")
echo "ngay trong tuan (weekday): $current_day"

#So luong processor
cpu_count=$(grep -c '^processor' /proc/cpuinfo)
echo "so luong processor: $cpu_count"

# Model name cua CPU
cpu_model=$(grep 'model name' /proc/cpuinfo | uniq | cut -d':' -f2 | sed 's/^[\t ]*//')
echo "Model name cua CPU: $cpu_model"
