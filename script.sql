USE [master]
GO
/****** Object:  Database [connectjava]    Script Date: 10/27/2024 2:15:08 PM ******/
CREATE DATABASE [connectjava]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'connectjava', FILENAME = N'C:\Papadiohastacuandoes\connectjava.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'connectjava_log', FILENAME = N'C:\Papadiohastacuandoes\connectjava_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [connectjava] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [connectjava].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [connectjava] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [connectjava] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [connectjava] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [connectjava] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [connectjava] SET ARITHABORT OFF 
GO
ALTER DATABASE [connectjava] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [connectjava] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [connectjava] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [connectjava] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [connectjava] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [connectjava] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [connectjava] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [connectjava] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [connectjava] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [connectjava] SET  DISABLE_BROKER 
GO
ALTER DATABASE [connectjava] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [connectjava] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [connectjava] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [connectjava] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [connectjava] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [connectjava] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [connectjava] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [connectjava] SET RECOVERY FULL 
GO
ALTER DATABASE [connectjava] SET  MULTI_USER 
GO
ALTER DATABASE [connectjava] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [connectjava] SET DB_CHAINING OFF 
GO
ALTER DATABASE [connectjava] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [connectjava] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [connectjava] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [connectjava] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'connectjava', N'ON'
GO
ALTER DATABASE [connectjava] SET QUERY_STORE = ON
GO
ALTER DATABASE [connectjava] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [connectjava]
GO
/****** Object:  User [usersql]    Script Date: 10/27/2024 2:15:09 PM ******/
CREATE USER [usersql] FOR LOGIN [usersql] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 10/27/2024 2:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[Nombre] [varchar](40) NOT NULL,
	[Gentilicio] [varchar](40) NULL,
	[Capital] [varchar](40) NULL,
	[Status] [bit] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pk_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registro]    Script Date: 10/27/2024 2:15:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registro](
	[Nombre] [varchar](40) NOT NULL,
	[Correo] [varchar](40) NULL,
	[Clave] [varchar](40) NULL,
	[Status] [bit] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pk_id1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [connectjava] SET  READ_WRITE 
GO
