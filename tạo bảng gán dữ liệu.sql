USE QLSV
GO


-- tạo bảng hệ đào tạo
CREATE TABLE tblHeDT(
    maHeDT VARCHAR(5) PRIMARY KEY,
    tenHeDT NVARCHAR(40) NOT NULL
)

-- tạo bảng khóa học
CREATE TABLE tblKhoaHoc(
    maKhoaHoc VARCHAR(5) PRIMARY KEY,
    tenKhoaHoc NVARCHAR(40) NOT NULL
)

-- tạo bảng khoa
CREATE TABLE tblKhoa(
    maKhoa VARCHAR(10) PRIMARY KEY,
    tenKhoa NVARCHAR(40) NOT NULL
)

-- tạo bảng lớp
CREATE TABLE tblLop(
    maLop VARCHAR(10) PRIMARY KEY,
    tenLop NVARCHAR(40) NOT NULL,
    maKhoa VARCHAR(10) FOREIGN KEY REFERENCES tblKhoa (maKhoa),
    maHeDT VARCHAR(5) FOREIGN KEY REFERENCES tblHeDT (maHeDT),
    maKhoaHoc VARCHAR(5) FOREIGN KEY REFERENCES tblKhoaHoc(maKhoaHoc),
)

-- Tạo bảng sinh viên
CREATE TABLE tblSinhVien(
    maSV VARCHAR(20) PRIMARY KEY,
    tenSV NVARCHAR(50),
    gioitinh BIT,
    ngaysinh DATETIME,
    quequan NVARCHAR(50),
    maLop VARCHAR(10) FOREIGN KEY REFERENCES tblLop(maLop),
)

-- tạo bảng giáo viên
CREATE TABLE tblTaiKhoan(
    maGV VARCHAR(20) PRIMARY KEY,
    tenGV NVARCHAR(50),
    matkhau VARCHAR(50)
)


-- nhập dữ liệu cho bảng hệ đào tạo
INSERT INTO tblHeDT VALUES
    ('CQ',N'Chính quy'),
    ('CLC',N'Chất lượng cao'),
    ('VB2',N'Văn bằng 2')

-- nhập dữ liệu cho bảng mã khóa học
INSERT INTO tblKhoaHoc VALUES
    ('K54',N'Khóa 54'),
    ('K55',N'Khóa 55'),
    ('K56',N'Khóa 56'),
    ('K57',N'Khóa 57')

-- nhập dữ liệu cho bảng khoa
INSERT INTO tblKhoa VALUES
    ('KT',N'Kế toán'),
    ('QTKD',N'Quản trị kinh doanh'),
    ('NNA',N'Ngôn ngữ Anh'),
    ('HTTT',N'Hệ thống thông tin quản lý'),
    ('TC',N'Tài chính - Ngân hàng')

-- nhập dữ liệu cho bảng lớp
INSERT INTO tblLop VALUES
    ('4101','CQ56/41.01','HTTT','CQ','K56'),
    ('2202','CQ55/22.02','KT','CQ','K55'),
    ('1103','CLC56/11.03','TC','CLC','K56'),
    ('5104','VB254/51.04','NNA','VB2','K54'),
    ('3105','CLC57/31.05','QTKD','CLC','K57')

--nhập dữ liệu cho bảng sinh viên
INSERT INTO tblSinhVien VALUES
    ('1873404000000',N'Nguyễn Văn Một',1,'08/01/2000',N'Hà Nội','4101'),
    ('1873404000010',N'Nguyễn Văn Hai',1,'08/27/1999',N'Hải Dương','2202'),
    ('1873404000347',N'Nguyễn Văn Ba',1,'08/26/1998',N'Ninh Bình','5104'),
    ('1873407834593',N'Nguyễn Văn Bốn',1,'08/25/2001',N'Hải Phòng','3105'),
    ('1873404345897',N'Nguyễn Thị Năm',0,'08/24/2000',N'Quảng Ninh','1103'),
    ('1873403479592',N'Nguyễn Thị Sáu',0,'08/23/2000',N'Ba Vì','4101'),
    ('1873408968984',N'Nguyễn Văn Bảy',1,'08/22/1999',N'Thái Nguyên','2202'),
    ('1873404568795',N'Nguyễn Văn Tám',1,'08/21/1998',N'Cao Bằng','5104'),
    ('1873406893475',N'Nguyễn Thị Chín',0,'08/20/2001',N'Nghệ An','3105'),
    ('1873408934758',N'Nguyễn Văn Mười',1,'08/19/1999',N'Hà Nội','2202'),
    ('1873403458732',N'Nguyễn Văn Mười Một',1,'08/18/2000',N'Hà Nội','1103'),
    ('1873458734594',N'Nguyễn Thị Mười Hai',0,'08/17/2000',N'Thanh Hóa','1103'),
    ('1873445879735',N'Nguyễn Văn Mười Hai',1,'08/16/2000',N'Quảng Nam','4101'),
    ('1873444538947',N'Nguyễn Văn Mười Ba',1,'08/15/1998',N'Quảng Bình','5104'),
    ('1873443458357',N'Nguyễn Văn Mười Bốn',1,'08/27/2001',N'Quảng Trị','3105'),
    ('1873283715784',N'Nguyễn Văn Mười Lăm',1,'08/19/1998',N'Phú Thọ','5104')
    
-- nhập dữ liệu cho bảng tài khoản
INSERT INTO tblTaiKhoan VALUES
    ('gv12345',N'Giảng Viên Một','abc123')
