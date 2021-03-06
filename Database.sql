USE [master]
GO
/****** Object:  Database [ASM2]    Script Date: 2/9/2018 2:31:35 PM ******/
CREATE DATABASE [ASM2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASM2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ASM2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ASM2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ASM2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ASM2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASM2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASM2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASM2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASM2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASM2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASM2] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASM2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ASM2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASM2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASM2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASM2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASM2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASM2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASM2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASM2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASM2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ASM2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASM2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASM2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASM2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASM2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASM2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ASM2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASM2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ASM2] SET  MULTI_USER 
GO
ALTER DATABASE [ASM2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASM2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASM2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASM2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ASM2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ASM2] SET QUERY_STORE = OFF
GO
USE [ASM2]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ASM2]
GO
/****** Object:  Table [dbo].[Records]    Script Date: 2/9/2018 2:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Records](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[type] [int] NOT NULL,
	[reason] [nvarchar](200) NOT NULL,
	[date] [date] NOT NULL,
	[staffId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staffs]    Script Date: 2/9/2018 2:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staffs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[gender] [nvarchar](5) NOT NULL,
	[birthday] [date] NOT NULL,
	[photo] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](25) NOT NULL,
	[salary] [float] NOT NULL,
	[notes] [nvarchar](500) NULL,
	[departId] [nvarchar](50) NOT NULL,
	[capdo] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ThanhTichCaNhan]    Script Date: 2/9/2018 2:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ThanhTichCaNhan] AS
SELECT Records.staffId, name,departId, count(case when type = '1' then '1' else null end) AS TongThanhTich, count(case when type = '0' then '1' else null end) AS TongKyLuat, (SUM(case when type=1 then 1 else 0 end)-SUM(case when type=0 then 1 else 0 end)) AS diemtongket FROM Staffs,Records  where Records.staffId = Staffs.id GROUP BY Records.staffId,name,departId
GO
/****** Object:  View [dbo].[Thanhtich]    Script Date: 2/9/2018 2:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Thanhtich] as SELECT staffId AS maso, SUM(case when type=1 then 1 else 0 end) AS thanhtich, SUM(case when type=0 then 1 else 0 end) AS kyluat, (SUM(case when type=1 then 1 else 0 end)-SUM(case when type=0 then 1 else 0 end)) AS diemtongket FROM Records GROUP BY staffId
GO
/****** Object:  View [dbo].[tongnhanvien]    Script Date: 2/9/2018 2:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[tongnhanvien] as Select count(id) as tongso from Staffs 
GO
/****** Object:  Table [dbo].[Departs]    Script Date: 2/9/2018 2:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departs](
	[id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[tongsopb]    Script Date: 2/9/2018 2:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[tongsopb] as Select count(id) as tongsopb from Departs
GO
/****** Object:  View [dbo].[tongkhenthuong]    Script Date: 2/9/2018 2:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[tongkhenthuong] as Select count(maso) as tongkhenthuong from Thanhtich
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/9/2018 2:31:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Departs] ([id], [name]) VALUES (N'1', N'Quản Trị')
INSERT [dbo].[Departs] ([id], [name]) VALUES (N'2', N'Đại Diện')
INSERT [dbo].[Departs] ([id], [name]) VALUES (N'3', N'Kinh Doanh')
INSERT [dbo].[Departs] ([id], [name]) VALUES (N'4', N'Nhân Sự')
INSERT [dbo].[Departs] ([id], [name]) VALUES (N'5', N'Marketing')
INSERT [dbo].[Departs] ([id], [name]) VALUES (N'6', N'Information Technology')
INSERT [dbo].[Departs] ([id], [name]) VALUES (N'7', N'An Ninh')
INSERT [dbo].[Departs] ([id], [name]) VALUES (N'8', N'Hành Chính')
SET IDENTITY_INSERT [dbo].[Records] ON 

INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (24, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-01-01' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (25, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-01-01' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (26, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-02-04' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (27, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-01-01' AS Date), 17)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (28, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-01-01' AS Date), 18)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (29, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-01-01' AS Date), 18)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (30, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-01-01' AS Date), 19)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (31, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-01-01' AS Date), 20)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (32, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2017-01-01' AS Date), 21)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (33, 1, N'Tốt.', CAST(N'2018-01-01' AS Date), 22)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (34, 0, N'Nghỉ nhiều.', CAST(N'2018-01-01' AS Date), 23)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (35, 0, N'Nghỉ nhiều.', CAST(N'2018-01-01' AS Date), 24)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (36, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2017-01-01' AS Date), 18)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (37, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2017-01-01' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (38, 1, N'Tốt.', CAST(N'2018-01-01' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (39, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-01-01' AS Date), 17)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (40, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2017-01-01' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (41, 0, N'Trốn việc đi chơi gái.', CAST(N'2018-01-01' AS Date), 17)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (42, 0, N'Trốn việc đi chơi gái.', CAST(N'2018-01-01' AS Date), 17)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (43, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-02-04' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (46, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-01-01' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (47, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2017-01-01' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (48, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2017-01-01' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (49, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-01-01' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (50, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-02-04' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (51, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-02-04' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (52, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-01-01' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (53, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-02-04' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (54, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-02-04' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (55, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2017-01-01' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (56, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-02-04' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (57, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2017-01-01' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (58, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-02-04' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (59, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-02-04' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (60, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-01-30' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (61, 0, N'Nghỉ nhiều.', CAST(N'2018-01-01' AS Date), 16)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (62, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2018-02-04' AS Date), 26)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (63, 1, N'Tốt.', CAST(N'2018-01-01' AS Date), 27)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (64, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2017-01-01' AS Date), 29)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (65, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2017-01-01' AS Date), 29)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (66, 1, N'Hoàn thành dự án sớm hơn thời hạn.', CAST(N'2017-01-01' AS Date), 16)
SET IDENTITY_INSERT [dbo].[Records] OFF
SET IDENTITY_INSERT [dbo].[Staffs] ON 

INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (16, N'Phan Thái Phong', N'Nam', CAST(N'1998-12-07' AS Date), N'phong.jpg', N'phongptps05454@fpt.edu.vn', N'0927383635', 600000000, N'Có nhiều kinh nghiệm trong lĩnh vực thiết kế web.', N'1', N'Chủ tịch')
INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (17, N'Mai Trần Hữu Hiếu', N'Nam', CAST(N'1998-01-01' AS Date), N'hieu.jpg', N'hieumth05444@fpt.edu.vn', N'0927383635', 50000000, N'Có nhiều kinh nghiệm trong lĩnh vực thiết kế web.', N'2', N'Trưởng phòng')
INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (18, N'Nguyễn Văn Nhật', N'Nam', CAST(N'1998-01-01' AS Date), N'nhat.jpg', N'anhnxps0589@fpt.edu.vn', N'0927383635', 45000000, N'Có nhiều kinh nghiệm trong lĩnh vực thiết kế web.', N'1', N'Tổng giám đốc')
INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (19, N'Lê Nguyễn Hoài Vũ', N'Nam', CAST(N'1998-01-01' AS Date), N'vu.jpg', N'anhnxps0589@fpt.edu.vn', N'0927383635', 15000000, N'Có nhiều kinh nghiệm trong lĩnh vực thiết kế web.', N'3', N'Trưởng phòng')
INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (20, N'Nguyễn Viết Bảo', N'Nam', CAST(N'1998-01-01' AS Date), N'bao.jpg', N'baops05555@fpt.edu.vn', N'0927383635', 15000000, N'Có nhiều kinh nghiệm trong lĩnh vực thiết kế web.', N'8', N'Thư ký')
INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (21, N'Nghiêm Xuân Anh', N'Nam', CAST(N'1998-01-01' AS Date), N'xanh.jpg', N'anhnxps0589@fpt.edu.vn', N'0927383635', 600000000, N'Có nhiều kinh nghiệm trong lĩnh vực thiết kế web.', N'1', N'Giám đốc')
INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (22, N'Nguyễn Minh Trí', N'Nam', CAST(N'1998-01-01' AS Date), N'tri.jpg', N'anhnxps0589@fpt.edu.vn', N'0927383635', 15000000, N'Có nhiều kinh nghiệm trong lĩnh vực thiết kế web.', N'5', N'Nhân viên')
INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (23, N'Lê Văn Luyện', N'Nam', CAST(N'1998-01-01' AS Date), N'team-1.jpg', N'luyenlvps05454@fpt.edu.vn', N'0927383635', 9999999, N'Có nhiều kinh nghiệm trong lĩnh vực thiết kế web.', N'7', N'Trưởng phòng')
INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (24, N'Nguyễn Hải Dương', N'Nam', CAST(N'1998-01-01' AS Date), N'testimonial-4.jpg', N'duongnhxxx@gamail.com', N'0927383635', 40000000, N'Có nhiều kinh nghiệm trong lĩnh vực thiết kế web.', N'1', N'Quản lý')
INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (25, N'Nguyễn Ngọc Quỳnh Như', N'Nữ', CAST(N'1998-01-01' AS Date), N'team-4.jpg', N'anhnxps0589@fpt.edu.vn', N'0927383635', 45000000, N'Có nhiều kinh nghiệm trong lĩnh vực thiết kế web.', N'3', N'Nhân viên')
INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (26, N'Bùi Tiến Dũng', N'Nam', CAST(N'1997-02-28' AS Date), N'team-3.jpg', N'anhnxps0589@fpt.edu.vn', N'0927383635', 600000000, N'Có nhiều kinh nghiệm trong lĩnh vực thiết kế web.', N'6', N'Trưởng phòng')
INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (27, N'Rô nan đô la', N'Nam', CAST(N'1998-01-01' AS Date), N'testimonial-5.jpg', N'baops05555@fpt.edu.vn', N'0927383635', 15000000, N'Có nhiều kinh nghiệm trong lĩnh vực thiết kế web.', N'4', N'Quản lý')
INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (28, N'Méc Xi', N'Nam', CAST(N'1998-01-01' AS Date), N'team-1.jpg', N'phongptps05454@fpt.edu.vn', N'0927383635', 45000000, N'Có nhiều kinh nghiệm trong lĩnh vực thiết kế web.', N'2', N'Phó phòng')
INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (29, N'Hồ Thanh Nghiêm', N'Nam', CAST(N'1998-01-01' AS Date), N'testimonial-5.jpg', N'phong.opi.fight.9@gmail.com', N'0927383635', 15000000, N'Có nhiều kinh nghiệm trong lĩnh vực thiết kế web.', N'7', N'Nhân viên')
SET IDENTITY_INSERT [dbo].[Staffs] OFF
INSERT [dbo].[Users] ([Username], [Password], [Fullname]) VALUES (N'admin', N'admin', N'Phan Thái Phong')
ALTER TABLE [dbo].[Records]  WITH CHECK ADD FOREIGN KEY([staffId])
REFERENCES [dbo].[Staffs] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Staffs]  WITH CHECK ADD FOREIGN KEY([departId])
REFERENCES [dbo].[Departs] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [ASM2] SET  READ_WRITE 
GO
