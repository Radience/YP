USE [master]
GO
/****** Object:  Database [YPZainashev]    Script Date: 28.02.2023 10:42:39 ******/
CREATE DATABASE [YPZainashev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'YPZainashev', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\YPZainashev.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'YPZainashev_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\YPZainashev_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [YPZainashev] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [YPZainashev].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [YPZainashev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [YPZainashev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [YPZainashev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [YPZainashev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [YPZainashev] SET ARITHABORT OFF 
GO
ALTER DATABASE [YPZainashev] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [YPZainashev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [YPZainashev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [YPZainashev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [YPZainashev] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [YPZainashev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [YPZainashev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [YPZainashev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [YPZainashev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [YPZainashev] SET  ENABLE_BROKER 
GO
ALTER DATABASE [YPZainashev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [YPZainashev] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [YPZainashev] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [YPZainashev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [YPZainashev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [YPZainashev] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [YPZainashev] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [YPZainashev] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [YPZainashev] SET  MULTI_USER 
GO
ALTER DATABASE [YPZainashev] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [YPZainashev] SET DB_CHAINING OFF 
GO
ALTER DATABASE [YPZainashev] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [YPZainashev] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [YPZainashev] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [YPZainashev] SET QUERY_STORE = OFF
GO
USE [YPZainashev]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 28.02.2023 10:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[id_account] [int] NULL,
	[login] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[id_role] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_]    Script Date: 28.02.2023 10:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_](
	[id_role] [int] NULL,
	[role_] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([id_account], [login], [password], [id_role]) VALUES (1, N'ruk', N'ruk', 1)
INSERT [dbo].[Accounts] ([id_account], [login], [password], [id_role]) VALUES (2, N'man', N'man', 2)
INSERT [dbo].[Accounts] ([id_account], [login], [password], [id_role]) VALUES (3, N'tech', N'tech', 3)
INSERT [dbo].[Accounts] ([id_account], [login], [password], [id_role]) VALUES (4, N'spec', N'spec', 4)
INSERT [dbo].[Accounts] ([id_account], [login], [password], [id_role]) VALUES (5, N'buh', N'buh', 5)
INSERT [dbo].[Accounts] ([id_account], [login], [password], [id_role]) VALUES (6, N'dir', N'dir', 6)
INSERT [dbo].[Accounts] ([id_account], [login], [password], [id_role]) VALUES (7, N'dep', N'dep', 7)
INSERT [dbo].[Role_] ([id_role], [role_]) VALUES (1, N'Руководитель отдела по работе с клиентами
')
INSERT [dbo].[Role_] ([id_role], [role_]) VALUES (2, N'Менеджер по работе с клиентами
')
INSERT [dbo].[Role_] ([id_role], [role_]) VALUES (3, N'Руководитель отдела технической поддержки
')
INSERT [dbo].[Role_] ([id_role], [role_]) VALUES (4, N'Специалист технической поддержки
')
INSERT [dbo].[Role_] ([id_role], [role_]) VALUES (5, N'Бухгалтер
')
INSERT [dbo].[Role_] ([id_role], [role_]) VALUES (6, N'Директор по развитию
')
INSERT [dbo].[Role_] ([id_role], [role_]) VALUES (7, N'Сотрудник технического департамента
')
USE [master]
GO
ALTER DATABASE [YPZainashev] SET  READ_WRITE 
GO
