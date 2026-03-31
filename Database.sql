USE [master]
GO
/****** Object:  Database [QLChungCu] ******/
CREATE DATABASE [QLChungCu]

GO
ALTER DATABASE [QLChungCu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLChungCu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLChungCu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLChungCu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLChungCu] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLChungCu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLChungCu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLChungCu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLChungCu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLChungCu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLChungCu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLChungCu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLChungCu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLChungCu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLChungCu] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLChungCu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLChungCu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLChungCu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLChungCu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLChungCu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLChungCu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLChungCu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLChungCu] SET RECOVERY FULL 
GO
ALTER DATABASE [QLChungCu] SET  MULTI_USER 
GO
ALTER DATABASE [QLChungCu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLChungCu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLChungCu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLChungCu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLChungCu] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLChungCu] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLChungCu', N'ON'
GO
ALTER DATABASE [QLChungCu] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLChungCu] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLChungCu]
GO
/****** Object:  Table [dbo].[Admin] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[IDAdmin] [varchar](30) NOT NULL,
	[TenAdmin] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CanHo] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CanHo](
	[SoCanHo] [nvarchar](20) NOT NULL,
	[SoTang] [varchar](6) NOT NULL,
	[SoCuDan] [int] NULL,
	[SoOTo] [int] NULL,
	[SoXeMay] [int] NULL,
	[SoXeDap] [int] NULL,
	[IDNguoiQuanLy] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SoCanHo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuDan] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuDan](
	[IDCuDan] [varchar](30) NOT NULL,
	[TenCuDan] [nvarchar](200) NOT NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[GiayToTuyThan] [varchar](50) NOT NULL,
	[SoCanHo] [varchar](20) NOT NULL,
	[IDNguoiQuanLy] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCuDan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuDan_CanHo] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuDan_CanHo](
	[IDCuDan] [varchar](30) NOT NULL,
	[SoCanHo] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonCuDan] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonCuDan](
	[IDHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[SoCanHo] [nvarchar](20) NOT NULL,
	[SoTien] [float] NOT NULL,
	[HanDong] [date] NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
	[IDNguoiQuanLy] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonTM] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonTM](
	[IDHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[SoTien] [float] NOT NULL,
	[HanThanhToan] [date] NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
	[IDMBTM] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatBangThuongMai] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatBangThuongMai](
	[IDMBTM] [int] IDENTITY(1,1) NOT NULL,
	[DienTich] [float] NULL,
	[TenDonViThue] [nvarchar](50) NULL,
	[GiaThue] [float] NULL,
	[TinhTrang] [nvarchar](50) NOT NULL,
	[IDNguoiQuanLy] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDMBTM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiQuanLy] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiQuanLy](
	[IDNguoiQuanLy] [varchar](30) NOT NULL,
	[TenNguoiQuanLy] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NULL,
	[SDTNguoiQuanLy] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNguoiQuanLy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[IDTaiKhoan] [varchar](30) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[QuyenHan] [nvarchar](50) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[IDNguoiQuanLy] [varchar](30) NULL,
	[IDAdmin] [varchar](30) NULL,
	[IDCuDan] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tang] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tang](
	[SoTang] [varchar](6) NOT NULL,
	[TongCanHo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SoTang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VatTu] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VatTu](
	[IDVatTu] [int] IDENTITY(1,1) NOT NULL,
	[TenVatTu] [nvarchar](200) NOT NULL,
	[SoLuong] [int] NULL,
	[IDNguoiQuanLy] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDVatTu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XeDap] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XeDap](
	[IDXeDap] [int] IDENTITY(1,1) NOT NULL,
	[LoaiXe] [nvarchar](100) NULL,
	[MauXe] [nvarchar](50) NULL,
	[IDCuDan] [varchar](30) NOT NULL,
	[IDNguoiQuanLy] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDXeDap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XeMay] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XeMay](
	[IDXeMay] [int] IDENTITY(1,1) NOT NULL,
	[BienSoXe] [nvarchar](50) NOT NULL,
	[LoaiXe] [nvarchar](100) NULL,
	[MauXe] [nvarchar](50) NULL,
	[IDCuDan] [varchar](30) NOT NULL,
	[IDNguoiQuanLy] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDXeMay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XeOTo] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XeOTo](
	[IDXeOTo] [int] IDENTITY(1,1) NOT NULL,
	[BienSoXe] [nvarchar](50) NOT NULL,
	[LoaiXe] [nvarchar](100) NULL,
	[MauXe] [nvarchar](50) NULL,
	[IDCuDan] [varchar](30) NOT NULL,
	[IDNguoiQuanLy] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDXeOTo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Du lieu ******/
--- Tai khoan Admin
INSERT [dbo].[Admin] ([IDAdmin], [TenAdmin]) VALUES (N'admin01', N'Nguyễn Văn A')
GO

INSERT [dbo].[CanHo] ([SoCanHo], [SoTang], [SoCuDan], [SoOTo], [SoXeMay], [SoXeDap], [IDNguoiQuanLy]) VALUES (N'A101', N'1', 2, 1, 1, 1, N'quanly01')
INSERT [dbo].[CanHo] ([SoCanHo], [SoTang], [SoCuDan], [SoOTo], [SoXeMay], [SoXeDap], [IDNguoiQuanLy]) VALUES (N'A102', N'1', 3, 1, 1, 1, N'quanly01')
INSERT [dbo].[CanHo] ([SoCanHo], [SoTang], [SoCuDan], [SoOTo], [SoXeMay], [SoXeDap], [IDNguoiQuanLy]) VALUES (N'A103', N'1', 2, 1, 0, 0, N'quanly01')
INSERT [dbo].[CanHo] ([SoCanHo], [SoTang], [SoCuDan], [SoOTo], [SoXeMay], [SoXeDap], [IDNguoiQuanLy]) VALUES (N'A104', N'1', 0, 0, 0, 0, N'quanly01')
INSERT [dbo].[CanHo] ([SoCanHo], [SoTang], [SoCuDan], [SoOTo], [SoXeMay], [SoXeDap], [IDNguoiQuanLy]) VALUES (N'A105', N'1', 0, 0, 0, 0, N'quanly01')
INSERT [dbo].[CanHo] ([SoCanHo], [SoTang], [SoCuDan], [SoOTo], [SoXeMay], [SoXeDap], [IDNguoiQuanLy]) VALUES (N'A201', N'2', 2, 1, 1, 1, N'quanly01')
INSERT [dbo].[CanHo] ([SoCanHo], [SoTang], [SoCuDan], [SoOTo], [SoXeMay], [SoXeDap], [IDNguoiQuanLy]) VALUES (N'A202', N'3', 2, 1, 0, 0, N'quanly01')
INSERT [dbo].[CanHo] ([SoCanHo], [SoTang], [SoCuDan], [SoOTo], [SoXeMay], [SoXeDap], [IDNguoiQuanLy]) VALUES (N'A203', N'2', 0, 0, 0, 0, N'quanly01')
INSERT [dbo].[CanHo] ([SoCanHo], [SoTang], [SoCuDan], [SoOTo], [SoXeMay], [SoXeDap], [IDNguoiQuanLy]) VALUES (N'A204', N'2', 0, 0, 0, 0, N'quanly01')
INSERT [dbo].[CanHo] ([SoCanHo], [SoTang], [SoCuDan], [SoOTo], [SoXeMay], [SoXeDap], [IDNguoiQuanLy]) VALUES (N'A205', N'2', 0, 0, 0, 0, N'quanly01')
INSERT [dbo].[CanHo] ([SoCanHo], [SoTang], [SoCuDan], [SoOTo], [SoXeMay], [SoXeDap], [IDNguoiQuanLy]) VALUES (N'A301', N'3', 2, 0, 1, 1, N'quanly02')
INSERT [dbo].[CanHo] ([SoCanHo], [SoTang], [SoCuDan], [SoOTo], [SoXeMay], [SoXeDap], [IDNguoiQuanLy]) VALUES (N'A302', N'3', 2, 0, 0, 0, N'quanly02')
INSERT [dbo].[CanHo] ([SoCanHo], [SoTang], [SoCuDan], [SoOTo], [SoXeMay], [SoXeDap], [IDNguoiQuanLy]) VALUES (N'A303', N'3', 2, 0, 1, 1, N'quanly02')
INSERT [dbo].[CanHo] ([SoCanHo], [SoTang], [SoCuDan], [SoOTo], [SoXeMay], [SoXeDap], [IDNguoiQuanLy]) VALUES (N'A304', N'3', 0, 0, 0, 0, N'quanly02')
INSERT [dbo].[CanHo] ([SoCanHo], [SoTang], [SoCuDan], [SoOTo], [SoXeMay], [SoXeDap], [IDNguoiQuanLy]) VALUES (N'A305', N'3', 0, 0, 0, 0, N'quanly02')
INSERT [dbo].[CanHo] ([SoCanHo], [SoTang], [SoCuDan], [SoOTo], [SoXeMay], [SoXeDap], [IDNguoiQuanLy]) VALUES (N'ch123', N'2', 67, 88, 78, 5, N'quanly02')
GO

INSERT [dbo].[CuDan] ([IDCuDan], [TenCuDan], [NgaySinh], [GioiTinh], [GiayToTuyThan], [SoCanHo], [IDNguoiQuanLy]) VALUES (N'cd123', N'An llllk', CAST(N'1999-07-15' AS Date), N'Nam', N'667888999', N'A102', N'quanly02')
INSERT [dbo].[CuDan] ([IDCuDan], [TenCuDan], [NgaySinh], [GioiTinh], [GiayToTuyThan], [SoCanHo], [IDNguoiQuanLy]) VALUES (N'cda101-1', N'Nguyễn Văn A', CAST(N'1985-06-15' AS Date), N'Nam', N'CMND123456', N'A101', N'quanly01')
INSERT [dbo].[CuDan] ([IDCuDan], [TenCuDan], [NgaySinh], [GioiTinh], [GiayToTuyThan], [SoCanHo], [IDNguoiQuanLy]) VALUES (N'cda101-2', N'Nguyễn Thị B', CAST(N'1990-09-10' AS Date), N'Nữ', N'CMND123457', N'A101', N'quanly01')
INSERT [dbo].[CuDan] ([IDCuDan], [TenCuDan], [NgaySinh], [GioiTinh], [GiayToTuyThan], [SoCanHo], [IDNguoiQuanLy]) VALUES (N'cda102-1', N'Phạm Văn C', CAST(N'1978-03-20' AS Date), N'Nam', N'CMND123458', N'A102', N'quanly01')
INSERT [dbo].[CuDan] ([IDCuDan], [TenCuDan], [NgaySinh], [GioiTinh], [GiayToTuyThan], [SoCanHo], [IDNguoiQuanLy]) VALUES (N'cda102-2', N'Nguyễn Thị D', CAST(N'1982-01-25' AS Date), N'Nữ', N'CMND123459', N'A102', N'quanly01')
INSERT [dbo].[CuDan] ([IDCuDan], [TenCuDan], [NgaySinh], [GioiTinh], [GiayToTuyThan], [SoCanHo], [IDNguoiQuanLy]) VALUES (N'cda103-1', N'Nguyễn Minh E', CAST(N'1995-11-05' AS Date), N'Nam', N'CMND123460', N'A103', N'quanly01')
INSERT [dbo].[CuDan] ([IDCuDan], [TenCuDan], [NgaySinh], [GioiTinh], [GiayToTuyThan], [SoCanHo], [IDNguoiQuanLy]) VALUES (N'cda103-2', N'Phan Thị F', CAST(N'1993-04-17' AS Date), N'Nữ', N'CMND123461', N'A103', N'quanly01')
INSERT [dbo].[CuDan] ([IDCuDan], [TenCuDan], [NgaySinh], [GioiTinh], [GiayToTuyThan], [SoCanHo], [IDNguoiQuanLy]) VALUES (N'cda201-1', N'Nguyễn Hoàng G', CAST(N'1980-07-12' AS Date), N'Nam', N'CMND123462', N'A201', N'quanly02')
INSERT [dbo].[CuDan] ([IDCuDan], [TenCuDan], [NgaySinh], [GioiTinh], [GiayToTuyThan], [SoCanHo], [IDNguoiQuanLy]) VALUES (N'cda201-2', N'Nguyễn Thị H', CAST(N'1988-11-28' AS Date), N'Nữ', N'CMND123463', N'A201', N'quanly02')
INSERT [dbo].[CuDan] ([IDCuDan], [TenCuDan], [NgaySinh], [GioiTinh], [GiayToTuyThan], [SoCanHo], [IDNguoiQuanLy]) VALUES (N'cda202-1', N'Phạm Minh I', CAST(N'1992-08-03' AS Date), N'Nam', N'CMND123464', N'A202', N'quanly02')
INSERT [dbo].[CuDan] ([IDCuDan], [TenCuDan], [NgaySinh], [GioiTinh], [GiayToTuyThan], [SoCanHo], [IDNguoiQuanLy]) VALUES (N'cda202-2', N'Nguyễn Kim J', CAST(N'1987-05-22' AS Date), N'Nữ', N'CMND123465', N'A202', N'quanly02')
INSERT [dbo].[CuDan] ([IDCuDan], [TenCuDan], [NgaySinh], [GioiTinh], [GiayToTuyThan], [SoCanHo], [IDNguoiQuanLy]) VALUES (N'cda301-1', N'Trần Quang K', CAST(N'1983-02-11' AS Date), N'Nam', N'CMND123466', N'A301', N'quanly03')
INSERT [dbo].[CuDan] ([IDCuDan], [TenCuDan], [NgaySinh], [GioiTinh], [GiayToTuyThan], [SoCanHo], [IDNguoiQuanLy]) VALUES (N'cda301-2', N'Phan Thị L', CAST(N'1990-07-17' AS Date), N'Nữ', N'CMND123467', N'A301', N'quanly03')
INSERT [dbo].[CuDan] ([IDCuDan], [TenCuDan], [NgaySinh], [GioiTinh], [GiayToTuyThan], [SoCanHo], [IDNguoiQuanLy]) VALUES (N'cda302-1', N'Nguyễn Hoàng M', CAST(N'1989-04-25' AS Date), N'Nam', N'CMND123468', N'A302', N'quanly03')
INSERT [dbo].[CuDan] ([IDCuDan], [TenCuDan], [NgaySinh], [GioiTinh], [GiayToTuyThan], [SoCanHo], [IDNguoiQuanLy]) VALUES (N'cda302-2', N'Phạm Minh N', CAST(N'1992-01-03' AS Date), N'Nữ', N'CMND123469', N'A302', N'quanly03')
INSERT [dbo].[CuDan] ([IDCuDan], [TenCuDan], [NgaySinh], [GioiTinh], [GiayToTuyThan], [SoCanHo], [IDNguoiQuanLy]) VALUES (N'cda303-1', N'Nguyễn Thu O', CAST(N'1994-03-13' AS Date), N'Nữ', N'CMND123470', N'A303', N'quanly03')
INSERT [dbo].[CuDan] ([IDCuDan], [TenCuDan], [NgaySinh], [GioiTinh], [GiayToTuyThan], [SoCanHo], [IDNguoiQuanLy]) VALUES (N'cda303-2', N'Phạm Văn P', CAST(N'1986-12-22' AS Date), N'Nam', N'CMND123471', N'A303', N'quanly03')
GO

INSERT [dbo].[CuDan_CanHo] ([IDCuDan], [SoCanHo]) VALUES (N'cda303-2', N'A303')
INSERT [dbo].[CuDan_CanHo] ([IDCuDan], [SoCanHo]) VALUES (N'cda303-1', N'A303')
INSERT [dbo].[CuDan_CanHo] ([IDCuDan], [SoCanHo]) VALUES (N'cda302-2', N'A302')
INSERT [dbo].[CuDan_CanHo] ([IDCuDan], [SoCanHo]) VALUES (N'cda302-1', N'A302')
INSERT [dbo].[CuDan_CanHo] ([IDCuDan], [SoCanHo]) VALUES (N'cda301-2', N'A301')
INSERT [dbo].[CuDan_CanHo] ([IDCuDan], [SoCanHo]) VALUES (N'cda301-1', N'A301')
INSERT [dbo].[CuDan_CanHo] ([IDCuDan], [SoCanHo]) VALUES (N'cda202-2', N'A202')
INSERT [dbo].[CuDan_CanHo] ([IDCuDan], [SoCanHo]) VALUES (N'cda202-1', N'A202')
INSERT [dbo].[CuDan_CanHo] ([IDCuDan], [SoCanHo]) VALUES (N'cda201-2', N'A201')
INSERT [dbo].[CuDan_CanHo] ([IDCuDan], [SoCanHo]) VALUES (N'cda201-1', N'A201')
INSERT [dbo].[CuDan_CanHo] ([IDCuDan], [SoCanHo]) VALUES (N'cda103-2', N'A103')
INSERT [dbo].[CuDan_CanHo] ([IDCuDan], [SoCanHo]) VALUES (N'cda103-1', N'A103')
INSERT [dbo].[CuDan_CanHo] ([IDCuDan], [SoCanHo]) VALUES (N'cda102-2', N'A102')
INSERT [dbo].[CuDan_CanHo] ([IDCuDan], [SoCanHo]) VALUES (N'cda102-1', N'A102')
INSERT [dbo].[CuDan_CanHo] ([IDCuDan], [SoCanHo]) VALUES (N'cda101-2', N'A101')
INSERT [dbo].[CuDan_CanHo] ([IDCuDan], [SoCanHo]) VALUES (N'cda101-1', N'A101')
INSERT [dbo].[CuDan_CanHo] ([IDCuDan], [SoCanHo]) VALUES (N'cd123', N'A102')
GO
SET IDENTITY_INSERT [dbo].[HoaDonCuDan] ON 

INSERT [dbo].[HoaDonCuDan] ([IDHoaDon], [SoCanHo], [SoTien], [HanDong], [TrangThai], [IDNguoiQuanLy]) VALUES (1, N'A101', 500000, CAST(N'2024-12-01' AS Date), N'Chưa thanh toán', N'quanly01')
INSERT [dbo].[HoaDonCuDan] ([IDHoaDon], [SoCanHo], [SoTien], [HanDong], [TrangThai], [IDNguoiQuanLy]) VALUES (2, N'A102', 750000, CAST(N'2024-12-05' AS Date), N'Chưa thanh toán', N'quanly01')
INSERT [dbo].[HoaDonCuDan] ([IDHoaDon], [SoCanHo], [SoTien], [HanDong], [TrangThai], [IDNguoiQuanLy]) VALUES (3, N'A103', 600000, CAST(N'2024-12-10' AS Date), N'Chưa thanh toán', N'quanly01')
INSERT [dbo].[HoaDonCuDan] ([IDHoaDon], [SoCanHo], [SoTien], [HanDong], [TrangThai], [IDNguoiQuanLy]) VALUES (4, N'A201', 700000, CAST(N'2024-12-01' AS Date), N'Chưa thanh toán', N'quanly01')
INSERT [dbo].[HoaDonCuDan] ([IDHoaDon], [SoCanHo], [SoTien], [HanDong], [TrangThai], [IDNguoiQuanLy]) VALUES (5, N'A202', 850000, CAST(N'2024-12-05' AS Date), N'Chưa thanh toán', N'quanly01')
INSERT [dbo].[HoaDonCuDan] ([IDHoaDon], [SoCanHo], [SoTien], [HanDong], [TrangThai], [IDNguoiQuanLy]) VALUES (6, N'A203', 650000, CAST(N'2024-12-10' AS Date), N'Chưa thanh toán', N'quanly01')
INSERT [dbo].[HoaDonCuDan] ([IDHoaDon], [SoCanHo], [SoTien], [HanDong], [TrangThai], [IDNguoiQuanLy]) VALUES (7, N'A301', 600000, CAST(N'2024-12-01' AS Date), N'Chưa thanh toán', N'quanly02')
INSERT [dbo].[HoaDonCuDan] ([IDHoaDon], [SoCanHo], [SoTien], [HanDong], [TrangThai], [IDNguoiQuanLy]) VALUES (8, N'A302', 750000, CAST(N'2024-12-05' AS Date), N'Chưa thanh toán', N'quanly02')
INSERT [dbo].[HoaDonCuDan] ([IDHoaDon], [SoCanHo], [SoTien], [HanDong], [TrangThai], [IDNguoiQuanLy]) VALUES (9, N'A303', 650000, CAST(N'2024-12-10' AS Date), N'Chưa thanh toán', N'quanly02')
INSERT [dbo].[HoaDonCuDan] ([IDHoaDon], [SoCanHo], [SoTien], [HanDong], [TrangThai], [IDNguoiQuanLy]) VALUES (10, N'A301', 8900000, CAST(N'2024-12-19' AS Date), N'Chưa thanh toán', N'quanly02')
INSERT [dbo].[HoaDonCuDan] ([IDHoaDon], [SoCanHo], [SoTien], [HanDong], [TrangThai], [IDNguoiQuanLy]) VALUES (11, N'A102', 990000, CAST(N'2025-01-15' AS Date), N'Chưa thanh toán', N'quanly02')
SET IDENTITY_INSERT [dbo].[HoaDonCuDan] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDonTM] ON 

INSERT [dbo].[HoaDonTM] ([IDHoaDon], [SoTien], [HanThanhToan], [TrangThai], [IDMBTM]) VALUES (1, 20000000, CAST(N'2024-12-15' AS Date), N'Chưa thanh toán', 1)
INSERT [dbo].[HoaDonTM] ([IDHoaDon], [SoTien], [HanThanhToan], [TrangThai], [IDMBTM]) VALUES (2, 15000000, CAST(N'2024-11-30' AS Date), N'Quá hạn', 2)
INSERT [dbo].[HoaDonTM] ([IDHoaDon], [SoTien], [HanThanhToan], [TrangThai], [IDMBTM]) VALUES (3, 18000000, CAST(N'2024-12-10' AS Date), N'Đã thanh toán', 3)
INSERT [dbo].[HoaDonTM] ([IDHoaDon], [SoTien], [HanThanhToan], [TrangThai], [IDMBTM]) VALUES (4, 5677777, CAST(N'2025-01-15' AS Date), N'Chưa thanh toán', 2)
SET IDENTITY_INSERT [dbo].[HoaDonTM] OFF
GO
SET IDENTITY_INSERT [dbo].[MatBangThuongMai] ON 

INSERT [dbo].[MatBangThuongMai] ([IDMBTM], [DienTich], [TenDonViThue], [GiaThue], [TinhTrang], [IDNguoiQuanLy]) VALUES (1, 120.5, N'Công ty ABC', 20000000, N'Đang thuê', N'quanly01')
INSERT [dbo].[MatBangThuongMai] ([IDMBTM], [DienTich], [TenDonViThue], [GiaThue], [TinhTrang], [IDNguoiQuanLy]) VALUES (2, 80, N'Lê Văn C', 15000000, N'Chưa cho thuê', N'quanly01')
INSERT [dbo].[MatBangThuongMai] ([IDMBTM], [DienTich], [TenDonViThue], [GiaThue], [TinhTrang], [IDNguoiQuanLy]) VALUES (3, 100, N'Cửa hàng XYZ', 18000000, N'Đang thuê', N'quanly01')
INSERT [dbo].[MatBangThuongMai] ([IDMBTM], [DienTich], [TenDonViThue], [GiaThue], [TinhTrang], [IDNguoiQuanLy]) VALUES (4, 114, N'abc', 7800000, N'Đang thuê', N'quanly02')
SET IDENTITY_INSERT [dbo].[MatBangThuongMai] OFF
GO

INSERT [dbo].[NguoiQuanLy] ([IDNguoiQuanLy], [TenNguoiQuanLy], [NgaySinh], [SDTNguoiQuanLy]) VALUES (N'quanly01', N'Lê Thị B', CAST(N'1990-11-25' AS Date), N'0912345678')
INSERT [dbo].[NguoiQuanLy] ([IDNguoiQuanLy], [TenNguoiQuanLy], [NgaySinh], [SDTNguoiQuanLy]) VALUES (N'quanly02', N'Nguyễn Tiến D', CAST(N'1989-05-10' AS Date), N'0987654321')
INSERT [dbo].[NguoiQuanLy] ([IDNguoiQuanLy], [TenNguoiQuanLy], [NgaySinh], [SDTNguoiQuanLy]) VALUES (N'quanly03', N'Phạm Tiến A', CAST(N'1985-10-15' AS Date), N'0134879543')
GO

INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'admin01', N'1234567', N'Admin', N'C:\Users\Admin\Pictures\Screenshots\Screenshot 2025-01-09 104515.png', NULL, N'admin01', NULL)
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'cd123', N'123456', N'Cư dân', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', NULL, NULL, N'cd123')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'cda101-1', N'123456', N'Cư dân', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', NULL, NULL, N'cda101-1')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'cda101-2', N'123456', N'Cư dân', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', NULL, NULL, N'cda101-2')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'cda102-1', N'123456', N'Cư dân', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', NULL, NULL, N'cda102-1')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'cda102-2', N'123456', N'Cư dân', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', NULL, NULL, N'cda102-2')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'cda103-1', N'123456', N'Cư dân', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', NULL, NULL, N'cda103-1')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'cda103-2', N'123456', N'Cư dân', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', NULL, NULL, N'cda103-2')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'cda201-1', N'123456', N'Cư dân', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', NULL, NULL, N'cda201-1')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'cda201-2', N'123456', N'Cư dân', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', NULL, NULL, N'cda201-2')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'cda202-1', N'123456', N'Cư dân', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', NULL, NULL, N'cda202-1')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'cda202-2', N'123456', N'Cư dân', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', NULL, NULL, N'cda202-2')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'cda301-1', N'123456', N'Cư dân', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', NULL, NULL, N'cda301-1')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'cda301-2', N'123456', N'Cư dân', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', NULL, NULL, N'cda301-2')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'cda302-1', N'123456', N'Cư dân', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', NULL, NULL, N'cda302-1')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'cda302-2', N'123456', N'Cư dân', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', NULL, NULL, N'cda302-2')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'cda303-1', N'123456', N'Cư dân', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', NULL, NULL, N'cda303-1')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'cda303-2', N'123456', N'Cư dân', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', NULL, NULL, N'cda303-2')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'quanly01', N'123456', N'Quản lý', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', N'quanly01', NULL, NULL)
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'quanly02', N'123456', N'Quản lý', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', N'quanly02', NULL, NULL)
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [MatKhau], [QuyenHan], [Avatar], [IDNguoiQuanLy], [IDAdmin], [IDCuDan]) VALUES (N'quanly03', N'123456', N'Quản lý', N'https://uploads.commoninja.com/searchengine/wordpress/user-avatar-reloaded.png', N'quanly03', NULL, NULL)
GO

INSERT [dbo].[Tang] ([SoTang], [TongCanHo]) VALUES (N'1', 5)
INSERT [dbo].[Tang] ([SoTang], [TongCanHo]) VALUES (N'10', 0)
INSERT [dbo].[Tang] ([SoTang], [TongCanHo]) VALUES (N'2', 6)
INSERT [dbo].[Tang] ([SoTang], [TongCanHo]) VALUES (N'3', 5)
INSERT [dbo].[Tang] ([SoTang], [TongCanHo]) VALUES (N'4', 0)
INSERT [dbo].[Tang] ([SoTang], [TongCanHo]) VALUES (N'5', 0)
INSERT [dbo].[Tang] ([SoTang], [TongCanHo]) VALUES (N'6', 0)
INSERT [dbo].[Tang] ([SoTang], [TongCanHo]) VALUES (N'7', 0)
INSERT [dbo].[Tang] ([SoTang], [TongCanHo]) VALUES (N'8', 0)
INSERT [dbo].[Tang] ([SoTang], [TongCanHo]) VALUES (N'9', 0)
GO
SET IDENTITY_INSERT [dbo].[VatTu] ON 

INSERT [dbo].[VatTu] ([IDVatTu], [TenVatTu], [SoLuong], [IDNguoiQuanLy]) VALUES (1, N'Thang máy', 3, N'quanly01')
INSERT [dbo].[VatTu] ([IDVatTu], [TenVatTu], [SoLuong], [IDNguoiQuanLy]) VALUES (2, N'Bàn ghế', 10, N'quanly02')
INSERT [dbo].[VatTu] ([IDVatTu], [TenVatTu], [SoLuong], [IDNguoiQuanLy]) VALUES (3, N'Xe hang', 444, N'quanly02')
SET IDENTITY_INSERT [dbo].[VatTu] OFF
GO
SET IDENTITY_INSERT [dbo].[XeDap] ON 

INSERT [dbo].[XeDap] ([IDXeDap], [LoaiXe], [MauXe], [IDCuDan], [IDNguoiQuanLy]) VALUES (1, N'Xe đạp thể thao', N'Đỏ', N'cda101-1', N'quanly01')
INSERT [dbo].[XeDap] ([IDXeDap], [LoaiXe], [MauXe], [IDCuDan], [IDNguoiQuanLy]) VALUES (2, N'Xe đạp điện', N'Xanh', N'cda102-2', N'quanly01')
INSERT [dbo].[XeDap] ([IDXeDap], [LoaiXe], [MauXe], [IDCuDan], [IDNguoiQuanLy]) VALUES (3, N'Xe đạp gấp', N'Vàng', N'cda201-1', N'quanly02')
INSERT [dbo].[XeDap] ([IDXeDap], [LoaiXe], [MauXe], [IDCuDan], [IDNguoiQuanLy]) VALUES (4, N'Xe đạp thể thao', N'Trắng', N'cda301-2', N'quanly02')
INSERT [dbo].[XeDap] ([IDXeDap], [LoaiXe], [MauXe], [IDCuDan], [IDNguoiQuanLy]) VALUES (5, N'Xe đạp điện', N'Đen', N'cda303-2', N'quanly03')
SET IDENTITY_INSERT [dbo].[XeDap] OFF
GO
SET IDENTITY_INSERT [dbo].[XeMay] ON 

INSERT [dbo].[XeMay] ([IDXeMay], [BienSoXe], [LoaiXe], [MauXe], [IDCuDan], [IDNguoiQuanLy]) VALUES (1, N'29M-12345', N'Xe tay ga', N'Đỏ', N'cda101-1', N'quanly01')
INSERT [dbo].[XeMay] ([IDXeMay], [BienSoXe], [LoaiXe], [MauXe], [IDCuDan], [IDNguoiQuanLy]) VALUES (2, N'29M-12346', N'Xe phân khối lớn', N'Xanh', N'cda102-2', N'quanly01')
INSERT [dbo].[XeMay] ([IDXeMay], [BienSoXe], [LoaiXe], [MauXe], [IDCuDan], [IDNguoiQuanLy]) VALUES (3, N'29M-23456', N'Xe số', N'Vàng', N'cda201-1', N'quanly02')
INSERT [dbo].[XeMay] ([IDXeMay], [BienSoXe], [LoaiXe], [MauXe], [IDCuDan], [IDNguoiQuanLy]) VALUES (4, N'29M-23457', N'Xe tay ga', N'Trắng', N'cda301-2', N'quanly02')
INSERT [dbo].[XeMay] ([IDXeMay], [BienSoXe], [LoaiXe], [MauXe], [IDCuDan], [IDNguoiQuanLy]) VALUES (5, N'29M-34567', N'Xe phân khối lớn', N'Đen', N'cda303-2', N'quanly03')
SET IDENTITY_INSERT [dbo].[XeMay] OFF
GO
SET IDENTITY_INSERT [dbo].[XeOTo] ON 

INSERT [dbo].[XeOTo] ([IDXeOTo], [BienSoXe], [LoaiXe], [MauXe], [IDCuDan], [IDNguoiQuanLy]) VALUES (1, N'29A-12345', N'Sedan', N'Đỏ', N'cda101-1', N'quanly01')
INSERT [dbo].[XeOTo] ([IDXeOTo], [BienSoXe], [LoaiXe], [MauXe], [IDCuDan], [IDNguoiQuanLy]) VALUES (2, N'29B-23456', N'SUV', N'Xanh', N'cda102-1', N'quanly01')
INSERT [dbo].[XeOTo] ([IDXeOTo], [BienSoXe], [LoaiXe], [MauXe], [IDCuDan], [IDNguoiQuanLy]) VALUES (3, N'29C-34568', N'Vehicle', N'Màu bạc', N'cda103-2', N'quanly01')
INSERT [dbo].[XeOTo] ([IDXeOTo], [BienSoXe], [LoaiXe], [MauXe], [IDCuDan], [IDNguoiQuanLy]) VALUES (4, N'29D-45679', N'Pickup', N'Xám', N'cda201-2', N'quanly02')
INSERT [dbo].[XeOTo] ([IDXeOTo], [BienSoXe], [LoaiXe], [MauXe], [IDCuDan], [IDNguoiQuanLy]) VALUES (5, N'29E-56789', N'Hatchback', N'Màu hồng', N'cda202-1', N'quanly02')
INSERT [dbo].[XeOTo] ([IDXeOTo], [BienSoXe], [LoaiXe], [MauXe], [IDCuDan], [IDNguoiQuanLy]) VALUES (6, N'87j99292', N'MEC', N'DEN', N'cd123', N'quanly02')
SET IDENTITY_INSERT [dbo].[XeOTo] OFF
GO
ALTER TABLE [dbo].[CanHo] ADD  DEFAULT ((0)) FOR [SoCuDan]
GO
ALTER TABLE [dbo].[CanHo] ADD  DEFAULT ((0)) FOR [SoOTo]
GO
ALTER TABLE [dbo].[CanHo] ADD  DEFAULT ((0)) FOR [SoXeMay]
GO
ALTER TABLE [dbo].[CanHo] ADD  DEFAULT ((0)) FOR [SoXeDap]
GO
ALTER TABLE [dbo].[Tang] ADD  DEFAULT ((0)) FOR [TongCanHo]
GO
ALTER TABLE [dbo].[CanHo]  WITH CHECK ADD  CONSTRAINT [FK_CH_NQL] FOREIGN KEY([IDNguoiQuanLy])
REFERENCES [dbo].[NguoiQuanLy] ([IDNguoiQuanLy])
GO
ALTER TABLE [dbo].[CanHo] CHECK CONSTRAINT [FK_CH_NQL]
GO
ALTER TABLE [dbo].[CanHo]  WITH CHECK ADD  CONSTRAINT [FK_CH_Tang] FOREIGN KEY([SoTang])
REFERENCES [dbo].[Tang] ([SoTang])
GO
ALTER TABLE [dbo].[CanHo] CHECK CONSTRAINT [FK_CH_Tang]
GO
ALTER TABLE [dbo].[CuDan]  WITH CHECK ADD FOREIGN KEY([IDNguoiQuanLy])
REFERENCES [dbo].[NguoiQuanLy] ([IDNguoiQuanLy])
GO
ALTER TABLE [dbo].[CuDan_CanHo]  WITH CHECK ADD  CONSTRAINT [FK_CDCH_CD] FOREIGN KEY([IDCuDan])
REFERENCES [dbo].[CuDan] ([IDCuDan])
GO
ALTER TABLE [dbo].[CuDan_CanHo] CHECK CONSTRAINT [FK_CDCH_CD]
GO
ALTER TABLE [dbo].[CuDan_CanHo]  WITH CHECK ADD  CONSTRAINT [FK_CDCH_CH] FOREIGN KEY([SoCanHo])
REFERENCES [dbo].[CanHo] ([SoCanHo])
GO
ALTER TABLE [dbo].[CuDan_CanHo] CHECK CONSTRAINT [FK_CDCH_CH]
GO
ALTER TABLE [dbo].[HoaDonCuDan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonCuDan_CanHo] FOREIGN KEY([SoCanHo])
REFERENCES [dbo].[CanHo] ([SoCanHo])
GO
ALTER TABLE [dbo].[HoaDonCuDan] CHECK CONSTRAINT [FK_HoaDonCuDan_CanHo]
GO
ALTER TABLE [dbo].[HoaDonCuDan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonCuDan_NguoiQuanLy] FOREIGN KEY([IDNguoiQuanLy])
REFERENCES [dbo].[NguoiQuanLy] ([IDNguoiQuanLy])
GO
ALTER TABLE [dbo].[HoaDonCuDan] CHECK CONSTRAINT [FK_HoaDonCuDan_NguoiQuanLy]
GO
ALTER TABLE [dbo].[HoaDonTM]  WITH CHECK ADD  CONSTRAINT [FK_HDTM_MBTM] FOREIGN KEY([IDMBTM])
REFERENCES [dbo].[MatBangThuongMai] ([IDMBTM])
GO
ALTER TABLE [dbo].[HoaDonTM] CHECK CONSTRAINT [FK_HDTM_MBTM]
GO
ALTER TABLE [dbo].[MatBangThuongMai]  WITH CHECK ADD FOREIGN KEY([IDNguoiQuanLy])
REFERENCES [dbo].[NguoiQuanLy] ([IDNguoiQuanLy])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([IDAdmin])
REFERENCES [dbo].[Admin] ([IDAdmin])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([IDNguoiQuanLy])
REFERENCES [dbo].[NguoiQuanLy] ([IDNguoiQuanLy])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([IDCuDan])
REFERENCES [dbo].[CuDan] ([IDCuDan])
GO
ALTER TABLE [dbo].[VatTu]  WITH CHECK ADD  CONSTRAINT [FK_VT_NQL] FOREIGN KEY([IDNguoiQuanLy])
REFERENCES [dbo].[NguoiQuanLy] ([IDNguoiQuanLy])
GO
ALTER TABLE [dbo].[VatTu] CHECK CONSTRAINT [FK_VT_NQL]
GO
ALTER TABLE [dbo].[XeDap]  WITH CHECK ADD  CONSTRAINT [FK_XeDap_CuDan] FOREIGN KEY([IDCuDan])
REFERENCES [dbo].[CuDan] ([IDCuDan])
GO
ALTER TABLE [dbo].[XeDap] CHECK CONSTRAINT [FK_XeDap_CuDan]
GO
ALTER TABLE [dbo].[XeDap]  WITH CHECK ADD  CONSTRAINT [FK_XeDap_NguoiQuanLy] FOREIGN KEY([IDNguoiQuanLy])
REFERENCES [dbo].[NguoiQuanLy] ([IDNguoiQuanLy])
GO
ALTER TABLE [dbo].[XeDap] CHECK CONSTRAINT [FK_XeDap_NguoiQuanLy]
GO
ALTER TABLE [dbo].[XeMay]  WITH CHECK ADD  CONSTRAINT [FK_XeMay_CuDan] FOREIGN KEY([IDCuDan])
REFERENCES [dbo].[CuDan] ([IDCuDan])
GO
ALTER TABLE [dbo].[XeMay] CHECK CONSTRAINT [FK_XeMay_CuDan]
GO
ALTER TABLE [dbo].[XeMay]  WITH CHECK ADD  CONSTRAINT [FK_XeMay_NguoiQuanLy] FOREIGN KEY([IDNguoiQuanLy])
REFERENCES [dbo].[NguoiQuanLy] ([IDNguoiQuanLy])
GO
ALTER TABLE [dbo].[XeMay] CHECK CONSTRAINT [FK_XeMay_NguoiQuanLy]
GO
ALTER TABLE [dbo].[XeOTo]  WITH CHECK ADD  CONSTRAINT [FK_XeOTo_CuDan] FOREIGN KEY([IDCuDan])
REFERENCES [dbo].[CuDan] ([IDCuDan])
GO
ALTER TABLE [dbo].[XeOTo] CHECK CONSTRAINT [FK_XeOTo_CuDan]
GO
ALTER TABLE [dbo].[XeOTo]  WITH CHECK ADD  CONSTRAINT [FK_XeOTo_NguoiQuanLy] FOREIGN KEY([IDNguoiQuanLy])
REFERENCES [dbo].[NguoiQuanLy] ([IDNguoiQuanLy])
GO
ALTER TABLE [dbo].[XeOTo] CHECK CONSTRAINT [FK_XeOTo_NguoiQuanLy]
GO
USE [master]
GO
ALTER DATABASE [QLChungCu] SET  READ_WRITE 
GO
