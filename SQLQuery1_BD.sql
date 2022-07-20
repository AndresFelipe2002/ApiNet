USE [master]
GO
/****** Object:  Database [pruebaA]    Script Date: 20/07/2022 10:21:25 a. m. ******/
CREATE DATABASE [pruebaA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pruebaA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\pruebaA.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'pruebaA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\pruebaA_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [pruebaA] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pruebaA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pruebaA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pruebaA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pruebaA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pruebaA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pruebaA] SET ARITHABORT OFF 
GO
ALTER DATABASE [pruebaA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pruebaA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pruebaA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pruebaA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pruebaA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pruebaA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pruebaA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pruebaA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pruebaA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pruebaA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pruebaA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pruebaA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pruebaA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pruebaA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pruebaA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pruebaA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pruebaA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pruebaA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [pruebaA] SET  MULTI_USER 
GO
ALTER DATABASE [pruebaA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pruebaA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pruebaA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pruebaA] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [pruebaA] SET DELAYED_DURABILITY = DISABLED 
GO
USE [pruebaA]
GO
/****** Object:  Table [dbo].[gestores_bd]    Script Date: 20/07/2022 10:21:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gestores_bd](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[lanzamiento] [int] NOT NULL,
	[desarrollador] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[gestores_bd] ON 

GO
INSERT [dbo].[gestores_bd] ([id], [nombre], [lanzamiento], [desarrollador]) VALUES (2, N'Microsoft SQL Server', 1989, N'Microsoft')
GO
INSERT [dbo].[gestores_bd] ([id], [nombre], [lanzamiento], [desarrollador]) VALUES (3, N'Mysql', 1995, N'Mysql')
GO
INSERT [dbo].[gestores_bd] ([id], [nombre], [lanzamiento], [desarrollador]) VALUES (4, N'PostgreSQL', 1996, N'PostgreSQL')
GO
SET IDENTITY_INSERT [dbo].[gestores_bd] OFF
GO
USE [master]
GO
ALTER DATABASE [pruebaA] SET  READ_WRITE 
GO
