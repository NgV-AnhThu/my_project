﻿CREATE DATABASE LEMONADE_COSMETICS
USE LEMONADE_COSMETICS

--CREATE TABLE
GO

IF OBJECT_ID(N'LoaiHangHoa',N'U') IS NOT NULL
    DROP TABLE LoaiHangHoa;
CREATE TABLE LoaiHangHoa (
	MaLoai NCHAR(10),
	TenLoai NVARCHAR(100),
	GhiChu NVARCHAR(200),
	CONSTRAINT PK_LoaiHangHoa PRIMARY KEY (MaLoai)
)

IF OBJECT_ID(N'HangHoa',N'U') IS NOT NULL
    DROP TABLE HangHoa;
CREATE TABLE HangHoa (
	MaHH NCHAR(10),
	MaLoai NCHAR(10),
	TenHH NVARCHAR(100),
	KhoiLuong FLOAT,
	Dvt	NVARCHAR(100),
	HinhAnh	NVARCHAR(200),
	NgaySX DATE,
	HanSD DATE,
	CONSTRAINT PK_HangHoa PRIMARY KEY (MaHH),
	CONSTRAINT FK_HangHoa_LH FOREIGN KEY(MaLoai) REFERENCES LoaiHangHoa(MaLoai)
)

IF OBJECT_ID(N'ThueSuat',N'U') IS NOT NULL
    DROP TABLE ThueSuat;
CREATE TABLE ThueSuat (
	MaThue NCHAR(10),
	MaHH NCHAR(10),
	MucThue FLOAT,
	DoiTuongApDung NVARCHAR(200),
	CONSTRAINT PK_ThueSuat PRIMARY KEY (MaThue),
	CONSTRAINT FK_ThueSuat_HH FOREIGN KEY(MaHH) REFERENCES HangHoa(MaHH)
)

IF OBJECT_ID(N'GiaBan',N'U') IS NOT NULL
    DROP TABLE GiaBan;
CREATE TABLE GiaBan (
	MaGB NCHAR(10),
	MaHH NCHAR(10),
	NgayApDung DATE,
	NgayKetThuc DATE,
	GiaBan FLOAT,
	CONSTRAINT PK_GiaBan PRIMARY KEY (MaGB),
	CONSTRAINT FK_GiaBan_HH FOREIGN KEY(MaHH) REFERENCES HangHoa(MaHH)
)

IF OBJECT_ID(N'KhuyenMai',N'U') IS NOT NULL
    DROP TABLE KhuyenMai;
CREATE TABLE KhuyenMai (
	MaKM NCHAR(10),
	MaHH NCHAR(10),
	NgayApDung DATE,
	NgayKetThuc DATE,
	GiaKM FLOAT,
	CONSTRAINT PK_KhuyenMai PRIMARY KEY (MaKM),
	CONSTRAINT FK_KhuyenMai_HH FOREIGN KEY(MaHH) REFERENCES HangHoa(MaHH)
)

IF OBJECT_ID(N'KhachHang',N'U') IS NOT NULL
    DROP TABLE KhachHang;
CREATE TABLE KhachHang (
	MaKH NCHAR(10),
	LoaiKH NVARCHAR(100),
	TenKH NVARCHAR(100),
	Sdt NVARCHAR(15),
	Email NVARCHAR(50),
	DiaChi NVARCHAR(200),
	NgaySinh DATE,
	GioiTinh NVARCHAR(20),
	MaSoThue NVARCHAR(20),
	SoTKNH NVARCHAR(20),
	TenNH NVARCHAR(100),
	CONSTRAINT PK_KhachHang PRIMARY KEY (MaKH)
)

IF OBJECT_ID(N'NhaCungCap',N'U') IS NOT NULL
    DROP TABLE NhaCungCap;
CREATE TABLE NhaCungCap (
	MaNCC NCHAR(10),
	TenNCC NVARCHAR(100),
	Sdt NVARCHAR(15),
	Email NVARCHAR(50),
	DiaChi NVARCHAR(200),
	ChiNhanh NVARCHAR(100),
	MaSoThue NVARCHAR(15),
	SoTKNH NVARCHAR(20),
	TenNH NVARCHAR(100),
	CONSTRAINT PK_NhaCungCap PRIMARY KEY (MaNCC)
)

IF OBJECT_ID(N'TaiKhoan',N'U') IS NOT NULL
    DROP TABLE TaiKhoan;
CREATE TABLE TaiKhoan (
	ID NCHAR(10),
	TenUser NVARCHAR(100),
	Pass NVARCHAR(20),
	PhanQuyen NVARCHAR(100),
	CONSTRAINT PK_TaiKhoan PRIMARY KEY (ID)
)

IF OBJECT_ID(N'NhanVien',N'U') IS NOT NULL
    DROP TABLE NhanVien;
CREATE TABLE NhanVien (
	MaNV NCHAR(10),
	ID NCHAR(10),
	TenNV NVARCHAR(100),
	CCCD NCHAR(12),
	NgaySinh DATE,
	GioiTinh NVARCHAR(20),
	Sdt NVARCHAR(15),
	Email NVARCHAR(50),
	DiaChi NVARCHAR(200),
	ChucVu NVARCHAR(100),
	SoTKNH NVARCHAR(20),
	TenNH NVARCHAR(100),
	CONSTRAINT PK_NhanVien PRIMARY KEY (MaNV),
	CONSTRAINT FK_NhanVien_TK FOREIGN KEY(ID) REFERENCES TaiKhoan(ID)
)

IF OBJECT_ID(N'KhoHang',N'U') IS NOT NULL
    DROP TABLE KhoHang;
CREATE TABLE KhoHang (
	MaKho NCHAR(10),
	TenKho NVARCHAR(100),
	DiaChi NVARCHAR(200),
	CONSTRAINT PK_KhoHang PRIMARY KEY (MaKho)
)

IF OBJECT_ID(N'DonHang',N'U') IS NOT NULL
    DROP TABLE DonHang;
CREATE TABLE DonHang (
	MaDH NCHAR(10),
	MaKH NCHAR(10),
	MaNV NCHAR(10),
	NgayLap DATE,
	TinhTrang NVARCHAR(100),
	CONSTRAINT PK_DonHang PRIMARY KEY (MaDH),
	CONSTRAINT FK_DonHang_KH FOREIGN KEY(MaKH) REFERENCES KhachHang(MaKH),
	CONSTRAINT FK_DonHang_NV FOREIGN KEY(MaNV) REFERENCES NhanVien(MaNV)
)

IF OBJECT_ID(N'ChiTietDonHang',N'U') IS NOT NULL
    DROP TABLE ChiTietDonHang;
CREATE TABLE ChiTietDonHang (
	MaDH NCHAR(10),
	MaHH NCHAR(10),
	MaKM NCHAR(10),
	SoLuong INT,
	GhiChu NVARCHAR(200),
	CONSTRAINT PK_ChiTietDonHang PRIMARY KEY(MaDH,MaHH),
	CONSTRAINT FK_ChiTietDonHang_DH FOREIGN KEY(MaDH) REFERENCES DonHang(MaDH),
	CONSTRAINT FK_ChiTietDonHang_HH FOREIGN KEY(MaHH) REFERENCES HangHoa(MaHH),
	CONSTRAINT FK_ChiTietDonHang_KM FOREIGN KEY(MaKM) REFERENCES KhuyenMai(MaKM)
)

IF OBJECT_ID(N'TaiKhoanCap1',N'U') IS NOT NULL
    DROP TABLE TaiKhoanCap1;
CREATE TABLE TaiKhoanCap1 (
	SoTKCap1 INT,
	TenTK NVARCHAR(100),
	TinhChat NVARCHAR(50),
	DienGiai NVARCHAR(200),
	CONSTRAINT PK_TaiKhoanCap1 PRIMARY KEY (SoTKcap1)
)

IF OBJECT_ID(N'TaiKhoanCap2',N'U') IS NOT NULL
    DROP TABLE TaiKhoanCap2;
CREATE TABLE TaiKhoanCap2 (
	SoTKCap2 INT,
	SoTKCap1 INT,
	TenTK NVARCHAR(100),
	CONSTRAINT PK_TaiKhoanCap2 PRIMARY KEY (SoTKCap2),
	CONSTRAINT FK_TaiKhoanCap2_C1 FOREIGN KEY(SoTKCap1) REFERENCES TaiKhoanCap1(SoTKCap1)
)

IF OBJECT_ID(N'SoDuTaiKhoan',N'U') IS NOT NULL
    DROP TABLE SoDuTaiKhoan;
CREATE TABLE SoDuTaiKhoan (
	MaSD NCHAR(10),
	SoTKCap2 INT,
	DuNo FLOAT,
	DuCo FLOAT,
	NgayCapNhat DATE,
	CONSTRAINT PK_SoDuTaiKhoan PRIMARY KEY (MaSD),
	CONSTRAINT FK_SoDuTaiKhoan_C2 FOREIGN KEY(SoTKCap2) REFERENCES TaiKhoanCap2(SoTKCap2)
)

IF OBJECT_ID(N'HoaDon',N'U') IS NOT NULL
    DROP TABLE HoaDon;
CREATE TABLE HoaDon (
	MaHD NCHAR(10),
	MaDH NCHAR(10),
	MaKH NCHAR(10),
	MaNV NCHAR(10),
	NgayChungTu DATE,
	PTTT NVARCHAR(100),
	CONSTRAINT PK_HoaDon PRIMARY KEY (MaHD),
	CONSTRAINT FK_HoaDon_DH FOREIGN KEY(MaDH) REFERENCES DonHang(MaDH),
	CONSTRAINT FK_HoaDon_KH FOREIGN KEY(MaKH) REFERENCES KhachHang(MaKH),
	CONSTRAINT FK_HoaDon_NV FOREIGN KEY(MaNV) REFERENCES NhanVien(MaNV)
)

IF OBJECT_ID(N'ChiTietHoaDon',N'U') IS NOT NULL
    DROP TABLE ChiTietHoaDon;
CREATE TABLE ChiTietHoaDon (
	MaHD NCHAR(10),
	MaHH NCHAR(10),
	SoLuong INT,
	GhiChu NVARCHAR(200),
	CONSTRAINT PK_ChiTietHoaDon PRIMARY KEY (MaHD,MaHH),
	CONSTRAINT FK_ChiTietHoaDon_HD FOREIGN KEY(MaHD) REFERENCES HoaDon(MaHD),
	CONSTRAINT FK_ChiTietHoaDon_HH FOREIGN KEY(MaHH) REFERENCES HangHoa(MaHH)
)

IF OBJECT_ID(N'PhieuThu',N'U') IS NOT NULL
    DROP TABLE PhieuThu;
CREATE TABLE PhieuThu (
	MaPT NCHAR(10),
	MaHD NCHAR(10),
	MaNV NCHAR(10),
	NgayChungTu DATE,
	SoTien FLOAT,
	PTTT NVARCHAR(100),
	DienGiai NVARCHAR(200),
	CONSTRAINT PK_PhieuThu PRIMARY KEY (MaPT),
	CONSTRAINT FK_PhieuThu_HD FOREIGN KEY(MaHD) REFERENCES HoaDon(MaHD),
	CONSTRAINT FK_PhieuThu_NV FOREIGN KEY(MaNV) REFERENCES NhanVien(MaNV)
)

IF OBJECT_ID(N'ButToan',N'U') IS NOT NULL
    DROP TABLE ButToan;
CREATE TABLE ButToan (
	MaBT NCHAR(10),
	MaSD NCHAR(10),
	MaPT NCHAR(10),
	MaNV NCHAR(10),
	NgayChungTu DATE,
	TaiKhoanNo INT,
	TaiKhoanCo INT,
	SoTien FLOAT,
	DienGiai NVARCHAR(200),
	CONSTRAINT PK_ButToan PRIMARY KEY (MaBT),
	CONSTRAINT FK_ButToan_NV FOREIGN KEY(MaNV) REFERENCES NhanVien(MaNV),
	CONSTRAINT FK_ButToan_SD FOREIGN KEY(MaSD) REFERENCES SoDuTaiKhoan(MaSD),
	CONSTRAINT FK_ButToan_PT FOREIGN KEY(MaPT) REFERENCES PhieuThu(MaPT)
)

IF OBJECT_ID(N'NhapKho',N'U') IS NOT NULL
    DROP TABLE NhapKho;
CREATE TABLE NhapKho (
	MaNK NCHAR(10),
	MaNV NCHAR(10),
	MaNCC NCHAR(10),
	MaKho NCHAR(10),
	MaBT NCHAR(10),
	NgayChungTu DATE,
	NoiDungPhieu NVARCHAR(500),
	CONSTRAINT PK_NhapKho PRIMARY KEY (MaNK),
	CONSTRAINT FK_NhapKho_NCC FOREIGN KEY(MaNCC) REFERENCES NhaCungCap(MaNCC),
	CONSTRAINT FK_NhapKho_NV FOREIGN KEY(MaNV) REFERENCES NhanVien(MaNV),
	CONSTRAINT FK_NhapKho_Kho FOREIGN KEY(MaKho) REFERENCES KhoHang(MaKho),
	CONSTRAINT FK_NhapKho_BT FOREIGN KEY(MaBT) REFERENCES ButToan(MaBT)
)

IF OBJECT_ID(N'ChiTietNhapKho',N'U') IS NOT NULL
    DROP TABLE ChiTietNhapKho;
CREATE TABLE ChiTietNhapKho (
	MaNK NCHAR(10),
	MaHH NCHAR(10),
	SoLuong INT,
	DonGia FLOAT,
	ThanhTien FLOAT,
	GhiChu FLOAT,
	CONSTRAINT PK_ChiTietNhapKho PRIMARY KEY(MaNK,MaHH),
	CONSTRAINT FK_ChiTietNhapKho_NK FOREIGN KEY(MaNK) REFERENCES NhapKho(MaNK),
	CONSTRAINT FK_ChiTietNhapKho_HH FOREIGN KEY(MaHH) REFERENCES HangHoa(MaHH)
)

IF OBJECT_ID(N'XuatKho',N'U') IS NOT NULL
    DROP TABLE XuatKho;
CREATE TABLE XuatKho (
	MaXK NCHAR(10),
	MaHD NCHAR(10),
	MaNV NCHAR(10),
	MaKho NCHAR(10),
	MaBT NCHAR(10),
	NgayChungTu DATE,
	NoiDungPhieu NVARCHAR(500),
	CONSTRAINT PK_XuatKho PRIMARY KEY (MaXK),
	CONSTRAINT FK_XuatKho_HD FOREIGN KEY(MaHD) REFERENCES HoaDon(MaHD),
	CONSTRAINT FK_XuatKho_Kho FOREIGN KEY(MaKho) REFERENCES KhoHang(MaKho),
	CONSTRAINT FK_XuatKho_NV FOREIGN KEY(MaNV) REFERENCES NhanVien(MaNV),
	CONSTRAINT FK_XhapKho_BT FOREIGN KEY(MaBT) REFERENCES ButToan(MaBT)
)

IF OBJECT_ID(N'ChiTietXuatKho',N'U') IS NOT NULL
    DROP TABLE ChiTietXuatKho;
CREATE TABLE ChiTietXuatKho (
	MaXK NCHAR(10),
	MaHH NCHAR(10),
	SoLuong INT,
	GhiChu FLOAT,
	CONSTRAINT PK_ChiTietXuatKho PRIMARY KEY(MaXK,MaHH),
	CONSTRAINT FK_ChiTietXuatKho_NK FOREIGN KEY(MaXK) REFERENCES XuatKho(MaXK),
	CONSTRAINT FK_ChiTietXuatKho_HH FOREIGN KEY(MaHH) REFERENCES HangHoa(MaHH)
)
