﻿--create table nhommathang (
--	manhomMH int primary key,
--	tennhomMH nvarchar(50)
--);
--
--create table mathang (
--	maMH int primary key,
--	tenMH nvarchar(50),
--	donvitinh nvarchar(5),
--	dongia int,
--	ngaynhap date,
--	nhomhang int,
--	soluongtonkho int,
--	constraint nhom_hang foreign key (nhomhang) references nhommathang(manhomMH)
--);
--
--create table khachhang (
--	maKH int primary key,
--	tenKH nvarchar(30),
--	diachi nvarchar(50),
--	soDT char(12),
--	diemthuong int
--);
--
--create table muahang(
--	maMH int,
--	maKH int,
--	ngaymua date,
--	soluong int,
--	primary key (maMH, maKH, ngaymua),
--	constraint ma_mua foreign key (maMH) references mathang,
--	constraint ma_khach foreign key (maKH) references khachhang
--);

--insert into mathang values
--(001, N'PANTENE Chăm sóc hư tổn', 'VND', 35000, '2013/10/31', 001, 1000),
--(002, N'DOVE Ngăn rụng tóc', 'VND', 40000, '2013/10/08', 001, 2000),
--(003, N'ADIDAS Dép Adilette Comfort', 'VND', 100000, '2022/11/24', 002, 1500),
--(004, N'UNIQLO Áo Polo-EX ngắn tay', 'VND', 120000, '2017/05/22', 002, 1400),
--(005, N'ADIDAS Giày Stan Smith', 'VND', 500000, '2022/04/09', 002, 900),
--(006, N'UNIQLO Parka Blocktech', 'VND', 200000, '2005/07/19', 002, 750),
--(007, N'ACER Nitro 5 Eagle', 'VND', 200000000, '2015/02/02', 003, 100),
--(008, N'Gigabyte G5 GD', 'VND', 30000000, '2015/05/27', 003, 50),
--(009, N'ASUS TUF A15', 'VND', 26000000, '2022/03/08', 003, 120),
--(010, N'NIKE ACG Air Deschutz+', 'VND', 300000, '2004/12/13', 003, 90)

--insert into nhommathang values 
--(001, N'Hàng gia dụng'),
--(002, N'Hàng thời trang'),
--(003, N'Hàng điện tử')
--(004, N'Hàng hóa tư nhân'),
--(005, N'Hàng thực phẩm')

--insert into khachhang values
--(1001, N'Lương Dũng Trí', N'37/4 Phương Mai, Đống Đa, Hà Nội', '881-572-6571', 9),
--(1002, N'Nguyễn Anh Khải', N'3B Trường Chinh, Thanh Xuân, Hà Nội', '325-161-2684', 8),
--(1003, N'Ngô Khắc Vũ', N'No. 15 Lê Duẩn, Hải Châu, Đà Nẵng', '686-240-7850', 6),
--(1004, N'Nguyễn Xuân Bình', N'295 Phạm Văn Chí, Quận 6, Hồ Chí Minh', '266-974-8409', 10),
--(1005, N'Nguyễn Tấn Nam', N'486 Trần Khát Chân, Hà Nội', '203-200-9564', 5),
--(1006, N'Phạm Ðông Dương', N'198 Lê Lai, Đồng Sơn, Thanh Hóa', '232-684-3855', 13),
--(1007, N'Võ Khánh An', N'111 Láng Hạ, Đống Đa, Hà Nội', '611-396-5257', 11),
--(1008, N'Đặng Bảo Sơn', N'93 Nguyễn Hữu Huân, quận Hoàn Kiếm, Hà Nội', '655-225-0825', 3),
--(1009, N'Bùi Thanh Tú', N'6 phố Đinh Tiên Hoàng, Huế', '197-554-4771', 0),
--(1010, N'Nguyễn Duy Tân', N'163 Lê Duẩn, Hai Bà Trưng, Hà Nội', '380-456-9178', 20)

--insert into muahang values
--(001, 1002, '2021-11-20', 2),
--(003, 1001, '2023-03-07', 3),
--(004, 1003, '2022-04-09', 1),
--(006, 1004, '2022-03-16', 6),
--(009, 1006, '2020-11-11', 1),
--(008, 1007, '2022-06-09', 1),
--(010, 1008, '2021-05-11', 1),
--(002, 1009, '2021-07-28', 5),
--(005, 1010, '2023-02-27', 2),
--(007, 1009, '2021-03-09', 1),
--(010, 1005, '2022-07-07', 1),
--(008, 1007, '2022-03-14', 1),
--(003, 1002, '2023-03-26', 2),
--(002, 1003, '2021-05-21', 2),
--(005, 1005, '2023-05-27', 1),
--(001, 1001, '2015-03-03', 1),
--(002, 1003, '2015-05-27', 1)

--task 2
--câu a
--select kh.maKH, kh.tenKH, kh.diachi, h.tenMH, mh.ngaymua from khachhang kh
--inner join muahang mh on mh.maKH = kh.maKH
--inner join mathang h on h.maMH = mh.maMH
--where mh.ngaymua between '2015/05/01' and '2015/05/30'

--câu b
--select top 1 mh.maMH, mh.tenMH, sum(h.soluong) as soluong, mh.dongia, sum(soluong)*mh.dongia as doanhthu 
--from mathang mh
--inner join muahang h on mh.maMH = h.maMH
--group by mh.maMH, mh.dongia, mh.tenMH
--order by doanhthu desc

--câu c
--select mh.maMH, m.tenMH, sum(mh.soluong) as soluong from muahang mh
--inner join mathang m on m.maMH = mh.maMH
--inner join nhommathang n on n.manhomMH = m.nhomhang
--where n.tennhomMH = N'Hàng gia dụng'
--group by mh.maMH, m.tenMH

--câu d
--select k.maKH, k.tenKH, k.soDT, sum(mh.dongia*m.maMH) as tonggiatri 
--from khachhang k
--inner join muahang m on m.maKH = k.maKH
--inner join mathang mh on m.maMH = mh.maMH
--group by k.maKH, k.tenKH, k.soDT
--order by k.maKH

--task 3
--create view info_prod
--as 
--	select k.maKH, k.tenKH, k.soDT, m.maMH, mh.tenMH, n.tennhomMH, mh.dongia,  m.ngaymua
--	from khachhang k
--	inner join muahang m on m.maKH = k.maKH
--	inner join mathang mh on m.maMH = mh.maMH
--	inner join nhommathang n on n.manhomMH = mh.nhomhang

--task 4
--select * from info_prod
--where year(ngaymua) = '2015'

--task 5


--ClassID: 130989
--
--Họ và tên: Đinh Thành Long
--
--MSSV: 20205096