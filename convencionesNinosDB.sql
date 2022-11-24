USE [master]
GO
/****** Object:  Database [DemoConvencionesDB]    Script Date: 24/11/2022 11:56:53 a. m. ******/
CREATE DATABASE [DemoConvencionesDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DemoConvencionesDB', FILENAME = N'/var/opt/mssql/data/DemoConvencionesDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DemoConvencionesDB_log', FILENAME = N'/var/opt/mssql/data/DemoConvencionesDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DemoConvencionesDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DemoConvencionesDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DemoConvencionesDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DemoConvencionesDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DemoConvencionesDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DemoConvencionesDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DemoConvencionesDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DemoConvencionesDB] SET  MULTI_USER 
GO
ALTER DATABASE [DemoConvencionesDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DemoConvencionesDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DemoConvencionesDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DemoConvencionesDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DemoConvencionesDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DemoConvencionesDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DemoConvencionesDB', N'ON'
GO
ALTER DATABASE [DemoConvencionesDB] SET QUERY_STORE = OFF
GO
USE [DemoConvencionesDB]
GO
/****** Object:  Table [dbo].[entradas]    Script Date: 24/11/2022 11:56:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entradas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nArticulo] [int] NOT NULL,
	[tipo] [varchar](30) NOT NULL,
	[convencion] [varchar](50) NOT NULL,
	[archivo] [varchar](100) NOT NULL,
	[thumbnail] [varchar](100) NOT NULL,
	[cita] [varchar](3000) NOT NULL,
	[titulo] [varchar](500) NOT NULL,
	[subtitulo] [varchar](1000) NOT NULL,
	[subsubtitulo] [varchar](1000) NOT NULL,
	[texto] [varchar](7000) NOT NULL,
	[organismos] [varchar](500) NOT NULL,
	[tipoDisposicion] [varchar](500) NOT NULL,
	[etiquetas] [varchar](1000) NOT NULL,
	[temas] [varchar](1000) NOT NULL,
	[url] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[etiquetas]    Script Date: 24/11/2022 11:56:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[etiquetas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[etiqueta] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fuentes]    Script Date: 24/11/2022 11:56:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fuentes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fuente] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[titulos]    Script Date: 24/11/2022 11:56:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[titulos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](1000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DemoConvencionesDB] SET  READ_WRITE 
GO
