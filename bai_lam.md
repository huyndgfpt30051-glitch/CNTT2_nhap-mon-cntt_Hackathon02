# BÀI LÀM – HACKATHON 02

- **Mã đề:** 10
- **Họ tên:** NGUYỄN ĐỨC GIA HUY 
- **Lớp:**CNTT2
- **Link repository:https://github.com/huyndgfpt30051-glitch/CNTT2_nhap-mon-cntt_Hackathon02.git**
- **Hệ điều hành (Windows/macOS):**

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
# Ghi lần lượt các lệnh đã chạy, mỗi lệnh một dòng
PS C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website> pwd

Path
----
C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website


PS C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website> ls


    Directory: C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
d-----       11/11/2026   1:34 PM                data
d-----       11/11/2026   1:33 PM                docs
d-----       11/11/2026   1:33 PM                evidence
d-----       11/11/2026   1:34 PM                logs
d-----        11/3/2026   7:08 AM                web
-a----        11/3/2026   7:08 AM             70 .env
-a----        11/3/2026   7:08 AM           2410 bai_lam.md
-a----        11/3/2026   7:08 AM            155 checklist_chuyen_nha.txt
-a----        11/3/2026   7:08 AM             22 temp_010.tmp


PS C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website> mv checklist_chuyen_nha.txt docs
PS C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website> mkdir backup


    Directory: C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
d-----       11/11/2026   1:35 PM                backup


PS C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website> rm temp_010.tmp
PS C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website> cd logs
PS C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website\logs> ls


    Directory: C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website\logs


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----        11/3/2026   7:08 AM            973 request.log
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
PS C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website\logs> cd..
PS C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website> get-childitem -recurse -force


    Directory: C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
d-----       11/11/2026   1:35 PM                backup
d-----       11/11/2026   1:34 PM                data
d-----       11/11/2026   1:35 PM                docs
d-----       11/11/2026   1:33 PM                evidence
d-----       11/11/2026   1:34 PM                logs
d-----        11/3/2026   7:08 AM                web
-a----        11/3/2026   7:08 AM             70 .env
-a----        11/3/2026   7:08 AM           2410 bai_lam.md


    Directory: C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website\data


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----        11/3/2026   7:08 AM           6139 hop_dong_thang_10.xlsx


    Directory: C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website\docs


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----        11/3/2026   7:08 AM            155 checklist_chuyen_nha.txt


    Directory: C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website\logs


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----        11/3/2026   7:08 AM            973 request.log


    Directory: C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website\web


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
d-----        11/3/2026   7:08 AM                images
-a----        11/3/2026   7:08 AM            587 app.js
-a----        11/3/2026   7:08 AM            544 index.html
-a----        11/3/2026   7:08 AM            460 style.css


    Directory: C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website\web\images


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----        11/3/2026   7:08 AM           3054 logo-movefast.png


PS C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website>


```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
PS C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website> GET-CONTENT LOGS/REQUEST.LOG | SLS "STATUS=500">>LOGS/LOI_500.TXT

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
2026-10-28 08:09:39 POST /api/dat-xe status=500
2026-10-28 08:13:50 POST /api/thanh-toan status=500

```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
PS C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website> ( GET-CONTENT LOGS/REQUEST.LOG | SLS "STATUS=404"|MEASURE-OBJECT).COUNT

```

```text
4

```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
PS C:\Users\Admin\Documents\starter-kit (1)\starter-kit\chuyen-nha-website> .\tong_hop.ps1
Dang tao bao cao...
hoan thanh!

```

### Nội dung file logs/tong_hop.txt

```text
=== BAO CAO SU CO WEBSITE ===

2026-10-28 08:28:45 GET /dat-xe-cu status=404
2026-10-28 08:41:29 GET /khuyen-mai-cu status=404
2026-10-28 08:50:02 GET /khuyen-mai-cu status=404
2026-10-28 09:05:46 GET /tin-tuc status=404




Count    : 6
Average  : 
Sum      : 
Maximum  : 
Minimum  : 
Property : 





```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [ x] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [ x] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [x ] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 | console |Failed to load resource: net::ERR_FILE_NOT_FOUND
app.js:18 Uncaught ReferenceError: hienThiGoi is not defined  | đổi hienThiGoi thành hienthiGoiChuyen |
| 2 | network | logo.jpg	(failed)net::ERR_FILE_NOT_FOUND | đổi images/logo thành images/logo-movefast.png |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:** khi mở trang web/index.html MoveFast – Dịch vụ chuyển nhà không hiển thị dữ liệu 
- **Expected:** bảng giá gói chuyển nhà hiển thị : mã gói , gói chuyển , giá/chuyển ( vnd ) 
- **Actual:** bảng giá chỉ hiển thị tiêu đề , không hiển thị dữ liệu bên dưới 
- **Log:** logo.jpg	(failed)net::ERR_FILE_NOT_FOUND

### Câu tìm kiếm Google

```text
site:stackoverflow " logo.jpg	(failed)net::ERR_FILE_NOT_FOUND"
```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/hop_dong_thang_10.xlsx`, không cần ghi vào đây.
