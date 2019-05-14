USE [master]
GO
/****** Object:  Database [DuAn_Nhom10]    Script Date: 14/05/2019 8:43:44 PM ******/
CREATE DATABASE [DuAn_Nhom10]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DuAn_Nhom10', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DuAn_Nhom10.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DuAn_Nhom10_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DuAn_Nhom10_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DuAn_Nhom10] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DuAn_Nhom10].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DuAn_Nhom10] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET ARITHABORT OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DuAn_Nhom10] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DuAn_Nhom10] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DuAn_Nhom10] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DuAn_Nhom10] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DuAn_Nhom10] SET  MULTI_USER 
GO
ALTER DATABASE [DuAn_Nhom10] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DuAn_Nhom10] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DuAn_Nhom10] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DuAn_Nhom10] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DuAn_Nhom10] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DuAn_Nhom10] SET QUERY_STORE = OFF
GO
USE [DuAn_Nhom10]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 14/05/2019 8:43:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Name] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[Email] [varchar](250) NULL,
	[Phone] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreateBy] [nvarchar](250) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[Permission] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Username], [Password], [Name], [Address], [Email], [Phone], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Permission], [Status]) VALUES (4, N'admin12', N'c4ca4238a0b923820dcc509a6f75849b', N'Khanh', N'Đà Lạt', N'khanh@gmail.com', N'0123456789', NULL, NULL, NULL, NULL, N'Học viên', 0)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Name], [Address], [Email], [Phone], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Permission], [Status]) VALUES (7, N'khanh', N'c4ca4238a0b923820dcc509a6f75849b', N'Vượng', N'Đà Lạt', N'vuong@gamil.com', N'0123456789', CAST(N'2019-05-14T14:46:47.160' AS DateTime), NULL, NULL, NULL, N'Học viên', 0)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Name], [Address], [Email], [Phone], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Permission], [Status]) VALUES (8, N'vuong', N'c4ca4238a0b923820dcc509a6f75849b', N'vượng', N'Đà Nẵng', N'vuong@gamil.com', N'0123456789', CAST(N'2019-05-14T14:47:04.673' AS DateTime), NULL, NULL, NULL, N'Học viên', 0)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Name], [Address], [Email], [Phone], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Permission], [Status]) VALUES (9, N'admin', N'c4ca4238a0b923820dcc509a6f75849b', N'Khanh', N'Đà Lạt', N'khanh@gmail.com', N'0123456789', NULL, NULL, NULL, NULL, N'Học viên', 0)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Name], [Address], [Email], [Phone], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Permission], [Status]) VALUES (10, N'admin1', N'c4ca4238a0b923820dcc509a6f75849b', N'Khanh', N'Đà Lạt', N'khanh@gmail.com', N'0123456789', NULL, NULL, NULL, NULL, N'Học viên', 0)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Name], [Address], [Email], [Phone], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Permission], [Status]) VALUES (11, N'admin2', N'c4ca4238a0b923820dcc509a6f75849b', N'Khanh', N'Đà Lạt', N'khanh@gmail.com', N'0123456789', NULL, NULL, NULL, NULL, N'Học viên', 0)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Name], [Address], [Email], [Phone], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Permission], [Status]) VALUES (13, N'tan', N'c4ca4238a0b923820dcc509a6f75849b', N'tân', N'Đà Lạt', N'khanh@gmail.com', N'0123456789', NULL, NULL, NULL, NULL, N'Học viên', 0)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Name], [Address], [Email], [Phone], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Permission], [Status]) VALUES (14, N'admin6', N'c4ca4238a0b923820dcc509a6f75849b', N'tân', N'Đà Lạt', N'khanh@gmail.com', N'0123456789', NULL, NULL, NULL, NULL, N'Học viên', 0)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Name], [Address], [Email], [Phone], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Permission], [Status]) VALUES (15, N'admin4', N'c4ca4238a0b923820dcc509a6f75849b', N'tân', N'Đà Lạt', N'khanh@gmail.com', N'0123456789', NULL, NULL, NULL, NULL, N'Học viên', 0)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Name], [Address], [Email], [Phone], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Permission], [Status]) VALUES (16, N'admin5', N'c4ca4238a0b923820dcc509a6f75849b', N'tân', N'Đà Lạt', N'khanh@gmail.com', N'0123456789', NULL, NULL, NULL, NULL, N'Học viên', 0)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Name], [Address], [Email], [Phone], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Permission], [Status]) VALUES (17, N'admin8', N'c4ca4238a0b923820dcc509a6f75849b', N'tân', N'Đà Lạt', N'khanh@gmail.com', N'0123456789', NULL, NULL, NULL, NULL, N'Học viên', 0)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Name], [Address], [Email], [Phone], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Permission], [Status]) VALUES (18, N'admin7', N'c4ca4238a0b923820dcc509a6f75849b', N'Khanh', N'Đà Lạt', N'khanh@gmail.com', N'0123456789', NULL, NULL, NULL, NULL, N'Học viên', 0)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Name], [Address], [Email], [Phone], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Permission], [Status]) VALUES (19, N'admin10', N'c4ca4238a0b923820dcc509a6f75849b', N'Vượng', N'Đà Lạt', N'khanh@gmail.com', N'0123456789', NULL, NULL, NULL, NULL, N'Admin', 0)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Name], [Address], [Email], [Phone], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Permission], [Status]) VALUES (20, N'admin11', N'c4ca4238a0b923820dcc509a6f75849b', N'Khanh', N'Đà Lạt', N'khanh@gmail.com', N'0123456789', CAST(N'2019-05-14T15:47:27.793' AS DateTime), NULL, NULL, NULL, N'Nhân viên', 0)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Name], [Address], [Email], [Phone], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Permission], [Status]) VALUES (21, N'admin12', N'c4ca4238a0b923820dcc509a6f75849b', N'Khanh', N'Đà Nẵng', N'tan@gmail.com', N'0123456789', CAST(N'2019-05-14T16:57:08.890' AS DateTime), NULL, NULL, NULL, N'Học viên', 0)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Name], [Address], [Email], [Phone], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Permission], [Status]) VALUES (22, N'admin14', N'c4ca4238a0b923820dcc509a6f75849b', N'Khanh', N'Đà Lạt', N'khanh@gmail.com', N'0123456789', CAST(N'2019-05-14T17:54:00.043' AS DateTime), NULL, NULL, NULL, N'Admin', 0)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Name], [Address], [Email], [Phone], [CreatedDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Permission], [Status]) VALUES (25, N'giangvien', N'c4ca4238a0b923820dcc509a6f75849b', N'Giáo viên', N'Đà Lạt', N'khanh@gmail.com', N'0123456789', CAST(N'2019-05-14T17:57:53.657' AS DateTime), NULL, NULL, NULL, N'Giáo viên', 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Permission]  DEFAULT ((0)) FOR [Permission]
GO
USE [master]
GO
ALTER DATABASE [DuAn_Nhom10] SET  READ_WRITE 
GO
