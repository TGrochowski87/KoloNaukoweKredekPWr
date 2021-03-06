USE [master]
GO
/****** Object:  Database [TheForest]    Script Date: 12/13/2020 6:10:06 PM ******/
CREATE DATABASE [TheForest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TheForest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.KREDEKSQL\MSSQL\DATA\TheForest.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TheForest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.KREDEKSQL\MSSQL\DATA\TheForest_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TheForest] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TheForest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TheForest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TheForest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TheForest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TheForest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TheForest] SET ARITHABORT OFF 
GO
ALTER DATABASE [TheForest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TheForest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TheForest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TheForest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TheForest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TheForest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TheForest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TheForest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TheForest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TheForest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TheForest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TheForest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TheForest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TheForest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TheForest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TheForest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TheForest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TheForest] SET RECOVERY FULL 
GO
ALTER DATABASE [TheForest] SET  MULTI_USER 
GO
ALTER DATABASE [TheForest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TheForest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TheForest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TheForest] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TheForest] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TheForest] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TheForest', N'ON'
GO
ALTER DATABASE [TheForest] SET QUERY_STORE = OFF
GO
USE [TheForest]
GO
/****** Object:  Table [dbo].[AccessibilityTypes]    Script Date: 12/13/2020 6:10:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessibilityTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AccessibilityTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Animals]    Script Date: 12/13/2020 6:10:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[AnimalTypeId] [int] NOT NULL,
	[PopulationId] [int] NOT NULL,
	[RegionId] [int] NOT NULL,
 CONSTRAINT [PK_Animals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnimalTypes]    Script Date: 12/13/2020 6:10:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnimalTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AnimalTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Keepers]    Script Date: 12/13/2020 6:10:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Keepers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[ContactNumber] [nvarchar](9) NOT NULL,
	[LodgeId] [int] NOT NULL,
 CONSTRAINT [PK_Keepers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lodges]    Script Date: 12/13/2020 6:10:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lodges](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RegionId] [int] NOT NULL,
 CONSTRAINT [PK_Lodges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logins]    Script Date: 12/13/2020 6:10:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mushrooms]    Script Date: 12/13/2020 6:10:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mushrooms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Edibility] [nvarchar](10) NOT NULL,
	[RegionId] [int] NOT NULL,
 CONSTRAINT [PK_Mushrooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PopulationStatus]    Script Date: 12/13/2020 6:10:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PopulationStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_PopulationStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 12/13/2020 6:10:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Area] [nvarchar](15) NOT NULL,
	[AccessibilityTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AccessibilityTypes] ON 

INSERT [dbo].[AccessibilityTypes] ([Id], [Name]) VALUES (1, N'Free')
INSERT [dbo].[AccessibilityTypes] ([Id], [Name]) VALUES (2, N'Forbidden')
INSERT [dbo].[AccessibilityTypes] ([Id], [Name]) VALUES (3, N'With restrictions')
INSERT [dbo].[AccessibilityTypes] ([Id], [Name]) VALUES (4, N'Only with a guide')
SET IDENTITY_INSERT [dbo].[AccessibilityTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Animals] ON 

INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (1, N'Wolf', 1, 3, 3)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (2, N'Bear', 1, 2, 2)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (3, N'Ocelote', 1, 3, 4)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (4, N'Eagle', 1, 1, 2)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (5, N'Vulture', 2, 5, 2)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (6, N'Zebra', 3, 1, 2)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (7, N'Hyena', 2, 4, 3)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (8, N'Rhino', 3, 1, 4)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (9, N'Lion', 1, 1, 2)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (10, N'Giraffe', 3, 2, 2)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (11, N'Cow', 4, 1, 1)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (12, N'Chicken', 4, 4, 2)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (13, N'Pig', 4, 4, 2)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (14, N'Deer', 3, 1, 1)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (15, N'Moose', 3, 5, 1)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (16, N'Tiger', 1, 2, 3)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (17, N'Viper', 1, 2, 2)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (18, N'Fox', 1, 2, 4)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (19, N'Duck', 3, 1, 4)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (20, N'Sheep', 3, 1, 2)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (21, N'Gerbil', 4, 1, 2)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (22, N'Chimpanze', 4, 3, 4)
INSERT [dbo].[Animals] ([Id], [Name], [AnimalTypeId], [PopulationId], [RegionId]) VALUES (23, N'Weasel', 1, 5, 2)
SET IDENTITY_INSERT [dbo].[Animals] OFF
GO
SET IDENTITY_INSERT [dbo].[AnimalTypes] ON 

INSERT [dbo].[AnimalTypes] ([Id], [Name]) VALUES (1, N'Predator')
INSERT [dbo].[AnimalTypes] ([Id], [Name]) VALUES (2, N'Scavenger')
INSERT [dbo].[AnimalTypes] ([Id], [Name]) VALUES (3, N'Herbivore')
INSERT [dbo].[AnimalTypes] ([Id], [Name]) VALUES (4, N'Omnivore')
SET IDENTITY_INSERT [dbo].[AnimalTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Keepers] ON 

INSERT [dbo].[Keepers] ([Id], [FirstName], [LastName], [ContactNumber], [LodgeId]) VALUES (1, N'Ali', N'Baise', N'339161844', 5)
INSERT [dbo].[Keepers] ([Id], [FirstName], [LastName], [ContactNumber], [LodgeId]) VALUES (2, N'Melba', N'Salack', N'183769080', 6)
INSERT [dbo].[Keepers] ([Id], [FirstName], [LastName], [ContactNumber], [LodgeId]) VALUES (3, N'Krystle', N'Aulsford', N'176288616', 4)
INSERT [dbo].[Keepers] ([Id], [FirstName], [LastName], [ContactNumber], [LodgeId]) VALUES (4, N'Xylia', N'Truin', N'657026122', 6)
INSERT [dbo].[Keepers] ([Id], [FirstName], [LastName], [ContactNumber], [LodgeId]) VALUES (5, N'Fenelia', N'Triggel', N'590424093', 5)
INSERT [dbo].[Keepers] ([Id], [FirstName], [LastName], [ContactNumber], [LodgeId]) VALUES (6, N'Vicki', N'St. Queintain', N'616493360', 3)
INSERT [dbo].[Keepers] ([Id], [FirstName], [LastName], [ContactNumber], [LodgeId]) VALUES (7, N'Izzy', N'Vines', N'959963181', 2)
INSERT [dbo].[Keepers] ([Id], [FirstName], [LastName], [ContactNumber], [LodgeId]) VALUES (8, N'Ronda', N'Aires', N'731939863', 1)
INSERT [dbo].[Keepers] ([Id], [FirstName], [LastName], [ContactNumber], [LodgeId]) VALUES (9, N'Chick', N'Chick', N'892771410', 2)
INSERT [dbo].[Keepers] ([Id], [FirstName], [LastName], [ContactNumber], [LodgeId]) VALUES (10, N'Gerhard', N'Moyer', N'723469498', 3)
INSERT [dbo].[Keepers] ([Id], [FirstName], [LastName], [ContactNumber], [LodgeId]) VALUES (13, N'Barack', N'Obama', N'123123123', 2)
SET IDENTITY_INSERT [dbo].[Keepers] OFF
GO
SET IDENTITY_INSERT [dbo].[Lodges] ON 

INSERT [dbo].[Lodges] ([Id], [RegionId]) VALUES (1, 1)
INSERT [dbo].[Lodges] ([Id], [RegionId]) VALUES (2, 2)
INSERT [dbo].[Lodges] ([Id], [RegionId]) VALUES (3, 2)
INSERT [dbo].[Lodges] ([Id], [RegionId]) VALUES (4, 3)
INSERT [dbo].[Lodges] ([Id], [RegionId]) VALUES (5, 4)
INSERT [dbo].[Lodges] ([Id], [RegionId]) VALUES (6, 4)
SET IDENTITY_INSERT [dbo].[Lodges] OFF
GO
SET IDENTITY_INSERT [dbo].[Logins] ON 

INSERT [dbo].[Logins] ([Id], [Login], [Password]) VALUES (1, N'Boss', N'Boss')
SET IDENTITY_INSERT [dbo].[Logins] OFF
GO
SET IDENTITY_INSERT [dbo].[Mushrooms] ON 

INSERT [dbo].[Mushrooms] ([Id], [Name], [Edibility], [RegionId]) VALUES (1, N'Champignon', N'Edible', 2)
INSERT [dbo].[Mushrooms] ([Id], [Name], [Edibility], [RegionId]) VALUES (2, N'Toadstool', N'Non edible', 3)
INSERT [dbo].[Mushrooms] ([Id], [Name], [Edibility], [RegionId]) VALUES (3, N'Bolete', N'Edible', 1)
INSERT [dbo].[Mushrooms] ([Id], [Name], [Edibility], [RegionId]) VALUES (4, N'Cossack', N'Edible', 4)
INSERT [dbo].[Mushrooms] ([Id], [Name], [Edibility], [RegionId]) VALUES (5, N'Boletus satanas', N'Non edible', 4)
SET IDENTITY_INSERT [dbo].[Mushrooms] OFF
GO
SET IDENTITY_INSERT [dbo].[PopulationStatus] ON 

INSERT [dbo].[PopulationStatus] ([Id], [Name]) VALUES (1, N'Endangered')
INSERT [dbo].[PopulationStatus] ([Id], [Name]) VALUES (2, N'Rare')
INSERT [dbo].[PopulationStatus] ([Id], [Name]) VALUES (3, N'Normal')
INSERT [dbo].[PopulationStatus] ([Id], [Name]) VALUES (4, N'Many')
INSERT [dbo].[PopulationStatus] ([Id], [Name]) VALUES (5, N'Numerous')
SET IDENTITY_INSERT [dbo].[PopulationStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Regions] ON 

INSERT [dbo].[Regions] ([Id], [Name], [Area], [AccessibilityTypeId]) VALUES (1, N'North', N'3 acres', 2)
INSERT [dbo].[Regions] ([Id], [Name], [Area], [AccessibilityTypeId]) VALUES (2, N'Central', N'5 acres', 3)
INSERT [dbo].[Regions] ([Id], [Name], [Area], [AccessibilityTypeId]) VALUES (3, N'East', N'4 acres', 1)
INSERT [dbo].[Regions] ([Id], [Name], [Area], [AccessibilityTypeId]) VALUES (4, N'South - West', N'6 acres', 4)
SET IDENTITY_INSERT [dbo].[Regions] OFF
GO
ALTER TABLE [dbo].[Animals]  WITH CHECK ADD  CONSTRAINT [FK_Animals_AnimalTypes] FOREIGN KEY([AnimalTypeId])
REFERENCES [dbo].[AnimalTypes] ([Id])
GO
ALTER TABLE [dbo].[Animals] CHECK CONSTRAINT [FK_Animals_AnimalTypes]
GO
ALTER TABLE [dbo].[Animals]  WITH CHECK ADD  CONSTRAINT [FK_Animals_PopulationStatus] FOREIGN KEY([PopulationId])
REFERENCES [dbo].[PopulationStatus] ([Id])
GO
ALTER TABLE [dbo].[Animals] CHECK CONSTRAINT [FK_Animals_PopulationStatus]
GO
ALTER TABLE [dbo].[Animals]  WITH CHECK ADD  CONSTRAINT [FK_Animals_Regions] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([Id])
GO
ALTER TABLE [dbo].[Animals] CHECK CONSTRAINT [FK_Animals_Regions]
GO
ALTER TABLE [dbo].[Keepers]  WITH CHECK ADD  CONSTRAINT [FK_Keepers_Lodges] FOREIGN KEY([LodgeId])
REFERENCES [dbo].[Lodges] ([Id])
GO
ALTER TABLE [dbo].[Keepers] CHECK CONSTRAINT [FK_Keepers_Lodges]
GO
ALTER TABLE [dbo].[Lodges]  WITH CHECK ADD  CONSTRAINT [FK_Lodges_Regions] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([Id])
GO
ALTER TABLE [dbo].[Lodges] CHECK CONSTRAINT [FK_Lodges_Regions]
GO
ALTER TABLE [dbo].[Mushrooms]  WITH CHECK ADD  CONSTRAINT [FK_Mushrooms_Regions] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([Id])
GO
ALTER TABLE [dbo].[Mushrooms] CHECK CONSTRAINT [FK_Mushrooms_Regions]
GO
ALTER TABLE [dbo].[Regions]  WITH CHECK ADD  CONSTRAINT [FK_Regions_AccessibilityTypes] FOREIGN KEY([AccessibilityTypeId])
REFERENCES [dbo].[AccessibilityTypes] ([Id])
GO
ALTER TABLE [dbo].[Regions] CHECK CONSTRAINT [FK_Regions_AccessibilityTypes]
GO
USE [master]
GO
ALTER DATABASE [TheForest] SET  READ_WRITE 
GO
