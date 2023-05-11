USE [master]
GO
/****** Object:  Database [MobileStore]    Script Date: 5/12/2023 12:29:44 AM ******/
CREATE DATABASE [MobileStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MobileStore', FILENAME = N'E:\SQL-Server\1\MSSQL16.MSSQLSERVER\MSSQL\DATA\MobileStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MobileStore_log', FILENAME = N'E:\SQL-Server\1\MSSQL16.MSSQLSERVER\MSSQL\DATA\MobileStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MobileStore] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MobileStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MobileStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MobileStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MobileStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MobileStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MobileStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [MobileStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MobileStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MobileStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MobileStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MobileStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MobileStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MobileStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MobileStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MobileStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MobileStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MobileStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MobileStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MobileStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MobileStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MobileStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MobileStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MobileStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MobileStore] SET RECOVERY FULL 
GO
ALTER DATABASE [MobileStore] SET  MULTI_USER 
GO
ALTER DATABASE [MobileStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MobileStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MobileStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MobileStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MobileStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MobileStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MobileStore', N'ON'
GO
ALTER DATABASE [MobileStore] SET QUERY_STORE = ON
GO
ALTER DATABASE [MobileStore] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MobileStore]
GO
/****** Object:  Table [dbo].[HoaDon1]    Script Date: 5/12/2023 12:29:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon1](
	[mahd] [nvarchar](50) NOT NULL,
	[ngayxuat] [date] NULL,
	[masp] [nvarchar](50) NULL,
	[soluong] [int] NULL,
	[giaban] [float] NULL,
 CONSTRAINT [PK_HoaDon1] PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kho]    Script Date: 5/12/2023 12:29:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho](
	[masp] [nvarchar](50) NOT NULL,
	[ngaynhap] [date] NULL,
	[soluong] [int] NULL,
	[dongia] [float] NULL,
 CONSTRAINT [PK_Kho] PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Luong]    Script Date: 5/12/2023 12:29:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luong](
	[manv] [nvarchar](50) NOT NULL,
	[songaycong] [int] NULL,
 CONSTRAINT [PK_Luong] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/12/2023 12:29:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[taikhoan] [nvarchar](50) NOT NULL,
	[matkhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/12/2023 12:29:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[manv] [nvarchar](50) NOT NULL,
	[tennv] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [nvarchar](50) NULL,
	[sodt] [nvarchar](50) NULL,
	[quequan] [nvarchar](50) NULL,
	[luongcoban] [float] NULL,
	[hinhanh] [nvarchar](500) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/12/2023 12:29:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[masp] [nvarchar](50) NOT NULL,
	[tensp] [nvarchar](50) NULL,
	[ngaysx] [date] NULL,
	[baohanh] [nvarchar](50) NULL,
	[nhasx] [nvarchar](50) NULL,
	[giaban] [float] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HoaDon1] ([mahd], [ngayxuat], [masp], [soluong], [giaban]) VALUES (N'hd01', CAST(N'2023-10-10' AS Date), N'dt01', 1, 70000000)
INSERT [dbo].[HoaDon1] ([mahd], [ngayxuat], [masp], [soluong], [giaban]) VALUES (N'hd02', CAST(N'2023-10-01' AS Date), N'dt01', 5, 70000000)
INSERT [dbo].[HoaDon1] ([mahd], [ngayxuat], [masp], [soluong], [giaban]) VALUES (N'hd03', CAST(N'2022-08-09' AS Date), N'dt02', 2, 10000000)
INSERT [dbo].[HoaDon1] ([mahd], [ngayxuat], [masp], [soluong], [giaban]) VALUES (N'hd04', CAST(N'2010-10-10' AS Date), N'dt03', 3, 10000000)
INSERT [dbo].[HoaDon1] ([mahd], [ngayxuat], [masp], [soluong], [giaban]) VALUES (N'hd05', CAST(N'2010-10-10' AS Date), N'dt03', 3, 10000000)
INSERT [dbo].[HoaDon1] ([mahd], [ngayxuat], [masp], [soluong], [giaban]) VALUES (N'hd06', CAST(N'2022-03-10' AS Date), N'dt04', 2, 17000000)
INSERT [dbo].[HoaDon1] ([mahd], [ngayxuat], [masp], [soluong], [giaban]) VALUES (N'hd07', CAST(N'2020-10-10' AS Date), N'dt04', 3, 17000000)
INSERT [dbo].[HoaDon1] ([mahd], [ngayxuat], [masp], [soluong], [giaban]) VALUES (N'hd08', CAST(N'2011-10-11' AS Date), N'dt03', 3, 11111111)
GO
INSERT [dbo].[Kho] ([masp], [ngaynhap], [soluong], [dongia]) VALUES (N'dt01', CAST(N'2018-01-15' AS Date), 87, 5000000)
INSERT [dbo].[Kho] ([masp], [ngaynhap], [soluong], [dongia]) VALUES (N'dt02', CAST(N'2018-01-15' AS Date), 15, 8000000)
INSERT [dbo].[Kho] ([masp], [ngaynhap], [soluong], [dongia]) VALUES (N'dt03', CAST(N'2019-05-30' AS Date), 15, 13000000)
INSERT [dbo].[Kho] ([masp], [ngaynhap], [soluong], [dongia]) VALUES (N'dt04', CAST(N'2019-05-30' AS Date), 15, 15500000)
INSERT [dbo].[Kho] ([masp], [ngaynhap], [soluong], [dongia]) VALUES (N'dt05', CAST(N'2021-01-30' AS Date), 10, 15600000)
INSERT [dbo].[Kho] ([masp], [ngaynhap], [soluong], [dongia]) VALUES (N'dt06', CAST(N'2021-01-30' AS Date), 20, 17000000)
INSERT [dbo].[Kho] ([masp], [ngaynhap], [soluong], [dongia]) VALUES (N'dt07', CAST(N'2023-02-02' AS Date), 20, 24000000)
INSERT [dbo].[Kho] ([masp], [ngaynhap], [soluong], [dongia]) VALUES (N'dt08', CAST(N'2023-02-02' AS Date), 25, 26000000)
INSERT [dbo].[Kho] ([masp], [ngaynhap], [soluong], [dongia]) VALUES (N'dt09', CAST(N'2023-03-15' AS Date), 30, 25500000)
GO
INSERT [dbo].[Luong] ([manv], [songaycong]) VALUES (N'nv01', 13)
INSERT [dbo].[Luong] ([manv], [songaycong]) VALUES (N'nv02', 27)
INSERT [dbo].[Luong] ([manv], [songaycong]) VALUES (N'nv03', 28)
GO
INSERT [dbo].[NguoiDung] ([taikhoan], [matkhau]) VALUES (N'1', N'12')
GO
INSERT [dbo].[NhanVien] ([manv], [tennv], [ngaysinh], [gioitinh], [sodt], [quequan], [luongcoban], [hinhanh]) VALUES (N'nv01', N'nguyen van a', CAST(N'2000-01-01' AS Date), N'nam', N'0989', N'hanoi', 100, N'E:\Github_ADD\Java\mobilestore_java\MobileStore\image\anhthe3.jpg')
INSERT [dbo].[NhanVien] ([manv], [tennv], [ngaysinh], [gioitinh], [sodt], [quequan], [luongcoban], [hinhanh]) VALUES (N'nv02', N'Phuong Van Canh', CAST(N'2001-02-05' AS Date), N'nam', N'0789', N'thaibinh', 200, N'E:\Github_ADD\Java\mobilestore_java\MobileStore\image\anhthe4.jpg')
INSERT [dbo].[NhanVien] ([manv], [tennv], [ngaysinh], [gioitinh], [sodt], [quequan], [luongcoban], [hinhanh]) VALUES (N'nv03', N'tran thi c', CAST(N'2001-03-03' AS Date), N'nu', N'0987', N'thaibinh', 300, N'E:\Github_ADD\Java\mobilestore_java\MobileStore\image\anhthe2.jpg')
INSERT [dbo].[NhanVien] ([manv], [tennv], [ngaysinh], [gioitinh], [sodt], [quequan], [luongcoban], [hinhanh]) VALUES (N'nv04', N'nhan vienasda', CAST(N'2003-02-10' AS Date), N'nam', N'32426546534', N'ha noi', 78765756, N'E:\Github_ADD\Java\mobilestore_java\MobileStore\image\nv01.jpg')
GO
INSERT [dbo].[SanPham] ([masp], [tensp], [ngaysx], [baohanh], [nhasx], [giaban]) VALUES (N'dt01', N'iPhone X', CAST(N'2018-01-01' AS Date), N'12 tháng', N'Apple', 70000000)
INSERT [dbo].[SanPham] ([masp], [tensp], [ngaysx], [baohanh], [nhasx], [giaban]) VALUES (N'dt02', N'iPhone XS Max', CAST(N'2018-01-01' AS Date), N'12 tháng', N'Apple', 10000000)
INSERT [dbo].[SanPham] ([masp], [tensp], [ngaysx], [baohanh], [nhasx], [giaban]) VALUES (N'dt03', N'iPhone 11', CAST(N'2019-05-05' AS Date), N'12 tháng', N'Apple', 14000000)
INSERT [dbo].[SanPham] ([masp], [tensp], [ngaysx], [baohanh], [nhasx], [giaban]) VALUES (N'dt04', N'iPhone 11Pro Max', CAST(N'2019-05-05' AS Date), N'12 tháng', N'Apple', 17000000)
INSERT [dbo].[SanPham] ([masp], [tensp], [ngaysx], [baohanh], [nhasx], [giaban]) VALUES (N'dt05', N'Samsung Galaxy S21', CAST(N'2021-01-01' AS Date), N'24 tháng', N'Samsung', 17000000)
INSERT [dbo].[SanPham] ([masp], [tensp], [ngaysx], [baohanh], [nhasx], [giaban]) VALUES (N'dt06', N'Samsung Galaxy S21 Ultra', CAST(N'2021-01-01' AS Date), N'24 tháng', N'Samsung', 19000000)
INSERT [dbo].[SanPham] ([masp], [tensp], [ngaysx], [baohanh], [nhasx], [giaban]) VALUES (N'dt07', N'Samsung Galaxy S23', CAST(N'2023-01-01' AS Date), N'24 tháng', N'Samsung', 25000000)
INSERT [dbo].[SanPham] ([masp], [tensp], [ngaysx], [baohanh], [nhasx], [giaban]) VALUES (N'dt08', N'SamSung Galaxy S23 Ultra', CAST(N'2023-01-01' AS Date), N'24 tháng', N'Samsung', 28000000)
INSERT [dbo].[SanPham] ([masp], [tensp], [ngaysx], [baohanh], [nhasx], [giaban]) VALUES (N'dt09', N'iPhone 14', CAST(N'2023-03-03' AS Date), N'24 tháng', N'Apple', 28000000)
GO
ALTER TABLE [dbo].[HoaDon1]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon1_Kho] FOREIGN KEY([masp])
REFERENCES [dbo].[Kho] ([masp])
GO
ALTER TABLE [dbo].[HoaDon1] CHECK CONSTRAINT [FK_HoaDon1_Kho]
GO
ALTER TABLE [dbo].[HoaDon1]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon1_SanPham] FOREIGN KEY([masp])
REFERENCES [dbo].[SanPham] ([masp])
GO
ALTER TABLE [dbo].[HoaDon1] CHECK CONSTRAINT [FK_HoaDon1_SanPham]
GO
ALTER TABLE [dbo].[Luong]  WITH CHECK ADD  CONSTRAINT [FK_Luong_NhanVien] FOREIGN KEY([manv])
REFERENCES [dbo].[NhanVien] ([manv])
GO
ALTER TABLE [dbo].[Luong] CHECK CONSTRAINT [FK_Luong_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [MobileStore] SET  READ_WRITE 
GO
