USE [master]
GO
/****** Object:  Database [PraktikaIR330STA_DAN_SVO]    Script Date: 10.12.2022 11:03:49 ******/
CREATE DATABASE [PraktikaIR330STA_DAN_SVO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PraktikaIR330STA_DAN_SVO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\PraktikaIR330STA_DAN_SVO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PraktikaIR330STA_DAN_SVO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\PraktikaIR330STA_DAN_SVO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PraktikaIR330STA_DAN_SVO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET ARITHABORT OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET RECOVERY FULL 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET  MULTI_USER 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PraktikaIR330STA_DAN_SVO', N'ON'
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET QUERY_STORE = OFF
GO
USE [PraktikaIR330STA_DAN_SVO]
GO
/****** Object:  Table [dbo].[Дом]    Script Date: 10.12.2022 11:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Дом](
	[Id] [tinyint] NOT NULL,
	[Город] [nvarchar](50) NULL,
	[Улица] [nvarchar](50) NULL,
	[Дом] [tinyint] NULL,
	[Номер] [nvarchar](1) NULL,
	[Широта] [tinyint] NULL,
	[Долгота] [tinyint] NULL,
	[Количество_этажей] [tinyint] NULL,
	[Площадь] [nvarchar](50) NULL,
 CONSTRAINT [PK_Дом] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Земля]    Script Date: 10.12.2022 11:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Земля](
	[Id] [tinyint] NOT NULL,
	[Город] [nvarchar](50) NULL,
	[Улица] [nvarchar](50) NULL,
	[Дом] [nvarchar](1) NULL,
	[Номер] [nvarchar](1) NULL,
	[Широта] [tinyint] NULL,
	[Долгота] [tinyint] NULL,
	[Площадь] [nvarchar](50) NULL,
 CONSTRAINT [PK_Земля] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Квартира]    Script Date: 10.12.2022 11:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Квартира](
	[Id] [tinyint] NOT NULL,
	[Город] [nvarchar](50) NULL,
	[Улица] [nvarchar](50) NULL,
	[Дом] [int] NULL,
	[Номер] [int] NULL,
	[Широта] [int] NULL,
	[Долгота] [int] NULL,
	[Площадь] [nvarchar](50) NULL,
	[Комнаты] [int] NULL,
	[Этаж] [int] NULL,
 CONSTRAINT [PK_Квартира] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Клиент]    Script Date: 10.12.2022 11:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиент](
	[Id] [tinyint] NOT NULL,
	[Фамилия] [nvarchar](50) NULL,
	[Имя] [nvarchar](50) NULL,
	[Отчество] [nvarchar](50) NULL,
	[Телефон] [nvarchar](50) NULL,
	[Эл.Почта] [nvarchar](50) NULL,
 CONSTRAINT [PK_Клиент] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Потребность в доме]    Script Date: 10.12.2022 11:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Потребность в доме](
	[Id] [tinyint] NOT NULL,
	[Город] [nvarchar](1) NULL,
	[Улица] [nvarchar](1) NULL,
	[Дом] [nvarchar](1) NULL,
	[Номер] [nvarchar](1) NULL,
	[МинЦена] [nvarchar](1) NULL,
	[МаксЦена] [nvarchar](1) NULL,
	[AgentId] [tinyint] NOT NULL,
	[ClientId] [tinyint] NOT NULL,
	[МинЭтаж] [nvarchar](1) NULL,
	[МаксЭтаж] [nvarchar](1) NULL,
	[МинПлощадь] [nvarchar](1) NULL,
	[МаксПлощадь] [nvarchar](1) NULL,
	[МинКомнат] [nvarchar](1) NULL,
	[МаксКомнат] [nvarchar](1) NULL,
 CONSTRAINT [PK_Потребность в доме] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Потребность в земле]    Script Date: 10.12.2022 11:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Потребность в земле](
	[Id] [tinyint] NOT NULL,
	[Город] [nvarchar](1) NULL,
	[Улица] [nvarchar](1) NULL,
	[Дом] [nvarchar](1) NULL,
	[Номер] [nvarchar](1) NULL,
	[МинЦена] [nvarchar](1) NULL,
	[МаксЦена] [nvarchar](1) NULL,
	[AgentId] [tinyint] NOT NULL,
	[ClientId] [tinyint] NOT NULL,
	[МинПлощадь] [nvarchar](1) NULL,
	[МаксПлощадь] [nvarchar](1) NULL,
 CONSTRAINT [PK_Потребность в земле] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Потребность в квартире]    Script Date: 10.12.2022 11:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Потребность в квартире](
	[Id] [tinyint] NOT NULL,
	[Город] [nvarchar](50) NULL,
	[Улица] [nvarchar](50) NULL,
	[Дом] [nvarchar](1) NULL,
	[Номер] [nvarchar](1) NULL,
	[МинЦена] [nvarchar](1) NULL,
	[МаксЦена] [int] NULL,
	[AgentId] [tinyint] NOT NULL,
	[ClientId] [tinyint] NOT NULL,
	[МинПлощадь] [tinyint] NULL,
	[МаксПлощадь] [nvarchar](1) NULL,
	[МинКомнат] [tinyint] NULL,
	[МаксКомнат] [nvarchar](1) NULL,
	[МинЭтаж] [tinyint] NULL,
	[МаксЭтаж] [tinyint] NULL,
 CONSTRAINT [PK_Потребность в квартире] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Предложение]    Script Date: 10.12.2022 11:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Предложение](
	[Id] [tinyint] NOT NULL,
	[Цена] [int] NOT NULL,
	[AgentId] [tinyint] NOT NULL,
	[ClientId] [tinyint] NOT NULL,
	[Объект_недвижимости] [tinyint] NOT NULL,
 CONSTRAINT [PK_Предложение] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Риэлтор]    Script Date: 10.12.2022 11:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Риэлтор](
	[Id] [tinyint] NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NOT NULL,
	[Доля_от_комиссии] [tinyint] NULL,
 CONSTRAINT [PK_Риэлтор] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сделка]    Script Date: 10.12.2022 11:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сделка](
	[Id] [tinyint] NOT NULL,
	[Потребность] [tinyint] NOT NULL,
	[Предложение] [tinyint] NOT NULL,
 CONSTRAINT [PK_deals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Потребность в доме]  WITH CHECK ADD  CONSTRAINT [FK_Потребность в доме_Клиент] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Клиент] ([Id])
GO
ALTER TABLE [dbo].[Потребность в доме] CHECK CONSTRAINT [FK_Потребность в доме_Клиент]
GO
ALTER TABLE [dbo].[Потребность в доме]  WITH CHECK ADD  CONSTRAINT [FK_Потребность в доме_Риэлтор] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Риэлтор] ([Id])
GO
ALTER TABLE [dbo].[Потребность в доме] CHECK CONSTRAINT [FK_Потребность в доме_Риэлтор]
GO
ALTER TABLE [dbo].[Потребность в земле]  WITH CHECK ADD  CONSTRAINT [FK_Потребность в земле_Клиент] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Клиент] ([Id])
GO
ALTER TABLE [dbo].[Потребность в земле] CHECK CONSTRAINT [FK_Потребность в земле_Клиент]
GO
ALTER TABLE [dbo].[Потребность в земле]  WITH CHECK ADD  CONSTRAINT [FK_Потребность в земле_Риэлтор] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Риэлтор] ([Id])
GO
ALTER TABLE [dbo].[Потребность в земле] CHECK CONSTRAINT [FK_Потребность в земле_Риэлтор]
GO
ALTER TABLE [dbo].[Потребность в квартире]  WITH CHECK ADD  CONSTRAINT [FK_Потребность в квартире_Клиент] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Клиент] ([Id])
GO
ALTER TABLE [dbo].[Потребность в квартире] CHECK CONSTRAINT [FK_Потребность в квартире_Клиент]
GO
ALTER TABLE [dbo].[Потребность в квартире]  WITH CHECK ADD  CONSTRAINT [FK_Потребность в квартире_Риэлтор] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Риэлтор] ([Id])
GO
ALTER TABLE [dbo].[Потребность в квартире] CHECK CONSTRAINT [FK_Потребность в квартире_Риэлтор]
GO
/****** Object:  StoredProcedure [dbo].[ПоискФИОКлиент]    Script Date: 10.12.2022 11:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[ПоискФИОКлиент]
(
@Фамилия nvarchar(50),
@Имя nvarchar(50),
@Отчество nvarchar(50)
)
As
Begin
Select *
From Клиент
Where Фамилия=@Фамилия and Имя=@Имя and Отчество=@Отчество
end
GO
/****** Object:  StoredProcedure [dbo].[ПоискФИОРиэлтор]    Script Date: 10.12.2022 11:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[ПоискФИОРиэлтор]
(
@Фамилия nvarchar(50),
@Имя nvarchar(50),
@Отчество nvarchar(50)
)
As
Begin
Select *
From Риэлтор
Where Фамилия=@Фамилия and Имя=@Имя and Отчество=@Отчество
end
GO
USE [master]
GO
ALTER DATABASE [PraktikaIR330STA_DAN_SVO] SET  READ_WRITE 
GO
