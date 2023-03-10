USE [master]
GO
/****** Object:  Database [WebHaberDb]    Script Date: 23.01.2023 13:11:08 ******/
CREATE DATABASE [WebHaberDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebHaberDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WebHaberDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebHaberDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WebHaberDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WebHaberDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebHaberDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebHaberDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebHaberDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebHaberDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebHaberDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebHaberDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebHaberDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebHaberDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebHaberDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebHaberDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebHaberDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebHaberDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebHaberDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebHaberDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebHaberDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebHaberDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebHaberDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebHaberDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebHaberDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebHaberDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebHaberDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebHaberDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [WebHaberDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebHaberDb] SET RECOVERY FULL 
GO
ALTER DATABASE [WebHaberDb] SET  MULTI_USER 
GO
ALTER DATABASE [WebHaberDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebHaberDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebHaberDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebHaberDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebHaberDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebHaberDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebHaberDb', N'ON'
GO
ALTER DATABASE [WebHaberDb] SET QUERY_STORE = OFF
GO
USE [WebHaberDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 23.01.2023 13:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminUsers]    Script Date: 23.01.2023 13:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_AdminUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Habers]    Script Date: 23.01.2023 13:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NULL,
	[Aciklama] [nvarchar](max) NULL,
	[ResimYol] [nvarchar](max) NULL,
	[Konu] [nvarchar](max) NULL,
 CONSTRAINT [PK_Habers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230115152504_mig1', N'3.1.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230115164312_mig2', N'3.1.1')
GO
SET IDENTITY_INSERT [dbo].[AdminUsers] ON 

INSERT [dbo].[AdminUsers] ([Id], [UserName], [Email], [Password]) VALUES (1, N'said', N'said@gmail.com', N'deneme')
INSERT [dbo].[AdminUsers] ([Id], [UserName], [Email], [Password]) VALUES (2, N'ogrenci_1', N'ogrenci_1@gmail.com', N'deneme')
SET IDENTITY_INSERT [dbo].[AdminUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[Habers] ON 

INSERT [dbo].[Habers] ([Id], [Baslik], [Aciklama], [ResimYol], [Konu]) VALUES (2, N'sasfsdfewsd', N'AK Parti, Yüksek Öğretim Kanunu''nda değişiklik içeren kanun teklifini Meclis Başkanlığı''na sundu  Tıpta, diş hekimliğinde, eczacılıkta, veteriner hekimlikte uzmanlık eğitimi yapmakta olanlar yüksek lisans, doktorasına tamamlamış araştırma görevlileri talep etmeleri durumunda altı ay içinde bulunduğu üniversite tarafından ataması yapılacak.  Meclis Genel Kurulu''nda görüşülen sözleşmelilere kadro düzenlemesinin içinde yer alıyordu bu madde, ancak YÖK tarafından YÖK kanununda değişiklik içeren kanun teklifinde yer verilmesi istenmişti.  MİLLİ İSTİHBARAT AKADEMİSİ KURULUYOR Sanatta yeterlilik eğitimine devam eden ya da eğitimini tamamlamış araştırma görevlilerinin de talep etmeleri durumunda atamaları yapılacak.  Üniversitelerde 50/d statüsü ile çalışanlar 33/a statüsü kapsamında kadroya geçirilebilecek. MİT bünyesinde Milli İstihbarat Akademisi kurulacak.', N'1057695235652286.jpg', N'Son dakika haberi AK Parti''den yeni YÖK kanunu! Meclis''e sunuldu')
INSERT [dbo].[Habers] ([Id], [Baslik], [Aciklama], [ResimYol], [Konu]) VALUES (3, N'AK Parti', N'AK Parti, Yüksek Öğretim Kanunu''nda değişiklik içeren kanun teklifini Meclis Başkanlığı''na sundu Tıpta, diş hekimliğinde, eczacılıkta, veteriner hekimlikte uzmanlık eğitimi yapmakta olanlar yüksek lisans, doktorasına tamamlamış araştırma görevlileri talep etmeleri durumunda altı ay içinde bulunduğu üniversite tarafından ataması yapılacak. Meclis Genel Kurulu''nda görüşülen sözleşmelilere kadro düzenlemesinin içinde yer alıyordu bu madde, ancak YÖK tarafından YÖK kanununda değişiklik içeren kanun teklifinde yer verilmesi istenmişti. MİLLİ İSTİHBARAT AKADEMİSİ KURULUYOR Sanatta yeterlilik eğitimine devam eden ya da eğitimini tamamlamış araştırma görevlilerinin de talep etmeleri durumunda atamaları yapılacak. Üniversitelerde 50/d statüsü ile çalışanlar 33/a statüsü kapsamında kadroya geçirilebilecek. MİT bünyesinde Milli İstihbarat Akademisi kurulacak.', N'1057695235601335.jpg', N'Son dakika haberi AK Parti''den yeni YÖK kanunu! Meclis''e sunuldu')
INSERT [dbo].[Habers] ([Id], [Baslik], [Aciklama], [ResimYol], [Konu]) VALUES (4, N'ewdgvsrtdf', N'AK Parti, Yüksek Öğretim Kanunu''nda değişiklik içeren kanun teklifini Meclis Başkanlığı''na sundu Tıpta, diş hekimliğinde, eczacılıkta, veteriner hekimlikte uzmanlık eğitimi yapmakta olanlar yüksek lisans, doktorasına tamamlamış araştırma görevlileri talep etmeleri durumunda altı ay içinde bulunduğu üniversite tarafından ataması yapılacak. Meclis Genel Kurulu''nda görüşülen sözleşmelilere kadro düzenlemesinin içinde yer alıyordu bu madde, ancak YÖK tarafından YÖK kanununda değişiklik içeren kanun teklifinde yer verilmesi istenmişti. MİLLİ İSTİHBARAT AKADEMİSİ KURULUYOR Sanatta yeterlilik eğitimine devam eden ya da eğitimini tamamlamış araştırma görevlilerinin de talep etmeleri durumunda atamaları yapılacak. Üniversitelerde 50/d statüsü ile çalışanlar 33/a statüsü kapsamında kadroya geçirilebilecek. MİT bünyesinde Milli İstihbarat Akademisi kurulacak.', N'1057695230330580.jpg', N'Üniversitelerde 50/d statüsü ile çalışanlar 33/a statüsü kapsamında kadroya geçirilebilecek. MİT bünyesinde Milli İstihbarat Akademisi kurulacak.')
INSERT [dbo].[Habers] ([Id], [Baslik], [Aciklama], [ResimYol], [Konu]) VALUES (5, N'ewdaeswf', N'lamış araştırma görevlileri talep etmeleri durumunda altı ay içinde bulunduğu üniversite tarafından ataması yapılacak. Meclis Genel Kurulu''nda görüşülen sözleşmelilere kadro düzenlemesinin içinde yer alıyordu bu madde, ancak YÖK tarafından YÖK kanununda değişiklik içeren kanun teklifinde yer verilmesi istenmişti. MİLLİ İSTİHBARAT AKADEMİSİ KURULUYOR Sanatta yeterlilik eğitimine devam eden ya da eğitimini tamamlamış araştırma görevlilerinin de talep etmeleri durumunda atamaları yapılacak. Üniversitelerde 50/d statüsü ile çalışanlar 33/a statüsü kapsamında kadroya geçirilebilecek. MİT bünyesinde Milli İstihbarat Akademisi kurulacak.', N'1057695230354211.jpg', N' 33/a statüsü kapsamında kadroya geçirilebilecek. MİT bünyesinde Milli İstihbarat Akademisi kurulacak.')
SET IDENTITY_INSERT [dbo].[Habers] OFF
GO
USE [master]
GO
ALTER DATABASE [WebHaberDb] SET  READ_WRITE 
GO
