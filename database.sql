USE [master]
GO
/****** Object:  Database [Wardrobe]    Script Date: 8/6/2017 9:17:39 PM ******/
CREATE DATABASE [Wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe]
GO
/****** Object:  Table [dbo].[ItemColor]    Script Date: 8/6/2017 9:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemColor](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ItemColor] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemType]    Script Date: 8/6/2017 9:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemType](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ItemType] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ocassions]    Script Date: 8/6/2017 9:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ocassions](
	[OcassionID] [int] IDENTITY(1,1) NOT NULL,
	[Ocassion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ocassions] PRIMARY KEY CLUSTERED 
(
	[OcassionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Seasons]    Script Date: 8/6/2017 9:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seasons](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Seasons] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WardrobeItem]    Script Date: 8/6/2017 9:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WardrobeItem](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](500) NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[TypeID] [int] NOT NULL,
	[OcassionID] [int] NOT NULL,
 CONSTRAINT [PK_WardrobeItem] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ItemColor] ON 

INSERT [dbo].[ItemColor] ([ColorID], [Color]) VALUES (1, N'Blue')
INSERT [dbo].[ItemColor] ([ColorID], [Color]) VALUES (2, N'Green')
INSERT [dbo].[ItemColor] ([ColorID], [Color]) VALUES (3, N'Red')
INSERT [dbo].[ItemColor] ([ColorID], [Color]) VALUES (4, N'Orange')
INSERT [dbo].[ItemColor] ([ColorID], [Color]) VALUES (5, N'Black')
INSERT [dbo].[ItemColor] ([ColorID], [Color]) VALUES (6, N'Gray')
INSERT [dbo].[ItemColor] ([ColorID], [Color]) VALUES (7, N'Brown')
INSERT [dbo].[ItemColor] ([ColorID], [Color]) VALUES (8, N'Yellow')
INSERT [dbo].[ItemColor] ([ColorID], [Color]) VALUES (9, N'White')
SET IDENTITY_INSERT [dbo].[ItemColor] OFF
SET IDENTITY_INSERT [dbo].[ItemType] ON 

INSERT [dbo].[ItemType] ([TypeID], [Type]) VALUES (1, N'Bottoms')
INSERT [dbo].[ItemType] ([TypeID], [Type]) VALUES (2, N'Tops')
INSERT [dbo].[ItemType] ([TypeID], [Type]) VALUES (3, N'Accessories')
INSERT [dbo].[ItemType] ([TypeID], [Type]) VALUES (4, N'Shoes')
SET IDENTITY_INSERT [dbo].[ItemType] OFF
SET IDENTITY_INSERT [dbo].[Ocassions] ON 

INSERT [dbo].[Ocassions] ([OcassionID], [Ocassion]) VALUES (1, N'Business')
INSERT [dbo].[Ocassions] ([OcassionID], [Ocassion]) VALUES (2, N'Casual')
SET IDENTITY_INSERT [dbo].[Ocassions] OFF
SET IDENTITY_INSERT [dbo].[Seasons] ON 

INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (1, N'Fall')
INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (2, N'Spring')
INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (3, N'Summer')
INSERT [dbo].[Seasons] ([SeasonID], [Season]) VALUES (4, N'Winter')
SET IDENTITY_INSERT [dbo].[Seasons] OFF
SET IDENTITY_INSERT [dbo].[WardrobeItem] ON 

INSERT [dbo].[WardrobeItem] ([ItemID], [Name], [Photo], [ColorID], [SeasonID], [TypeID], [OcassionID]) VALUES (2, N'Suede Shoes', N'/Content/images/black.jpg', 5, 1, 4, 2)
INSERT [dbo].[WardrobeItem] ([ItemID], [Name], [Photo], [ColorID], [SeasonID], [TypeID], [OcassionID]) VALUES (3, N'Striped Shoes', N'/Content/images/ClassicWhite.jpg', 9, 3, 4, 2)
INSERT [dbo].[WardrobeItem] ([ItemID], [Name], [Photo], [ColorID], [SeasonID], [TypeID], [OcassionID]) VALUES (4, N'Two-Tone Shoes', N'/Content/images/twotone.jpg', 6, 2, 4, 2)
INSERT [dbo].[WardrobeItem] ([ItemID], [Name], [Photo], [ColorID], [SeasonID], [TypeID], [OcassionID]) VALUES (5, N'Hi-Top Converse', N'/Content/images/redHitopConverse_.jpg', 3, 1, 4, 2)
INSERT [dbo].[WardrobeItem] ([ItemID], [Name], [Photo], [ColorID], [SeasonID], [TypeID], [OcassionID]) VALUES (6, N'Belt', N'/Content/images/blackbelt.png', 5, 2, 3, 1)
INSERT [dbo].[WardrobeItem] ([ItemID], [Name], [Photo], [ColorID], [SeasonID], [TypeID], [OcassionID]) VALUES (7, N'Watch', N'/Content/images/brownstrap.jpg', 7, 1, 3, 1)
INSERT [dbo].[WardrobeItem] ([ItemID], [Name], [Photo], [ColorID], [SeasonID], [TypeID], [OcassionID]) VALUES (8, N'Tie', N'/Content/images/tiepattern.png', 1, 2, 3, 1)
INSERT [dbo].[WardrobeItem] ([ItemID], [Name], [Photo], [ColorID], [SeasonID], [TypeID], [OcassionID]) VALUES (11, N'Joggers', N'/Content/images/khakijoggers.jpg', 7, 1, 1, 2)
INSERT [dbo].[WardrobeItem] ([ItemID], [Name], [Photo], [ColorID], [SeasonID], [TypeID], [OcassionID]) VALUES (12, N'Joggers', N'/Content/images/lightgreysweats.jpg', 6, 1, 1, 2)
INSERT [dbo].[WardrobeItem] ([ItemID], [Name], [Photo], [ColorID], [SeasonID], [TypeID], [OcassionID]) VALUES (13, N'Flash T-Shirt', N'/Content/images/flash.jpg', 3, 3, 2, 2)
INSERT [dbo].[WardrobeItem] ([ItemID], [Name], [Photo], [ColorID], [SeasonID], [TypeID], [OcassionID]) VALUES (14, N'Agent P T-Shirt', N'/Content/images/perry.jpg', 1, 3, 2, 2)
INSERT [dbo].[WardrobeItem] ([ItemID], [Name], [Photo], [ColorID], [SeasonID], [TypeID], [OcassionID]) VALUES (15, N'Superman', N'/Content/images/Superman.jpg', 6, 3, 2, 2)
INSERT [dbo].[WardrobeItem] ([ItemID], [Name], [Photo], [ColorID], [SeasonID], [TypeID], [OcassionID]) VALUES (16, N'Dress Shirt', N'/Content/images/LightBlueShirt.jpg', 1, 2, 2, 1)
SET IDENTITY_INSERT [dbo].[WardrobeItem] OFF
ALTER TABLE [dbo].[WardrobeItem]  WITH CHECK ADD  CONSTRAINT [FK_WardrobeItem_ItemColor] FOREIGN KEY([ColorID])
REFERENCES [dbo].[ItemColor] ([ColorID])
GO
ALTER TABLE [dbo].[WardrobeItem] CHECK CONSTRAINT [FK_WardrobeItem_ItemColor]
GO
ALTER TABLE [dbo].[WardrobeItem]  WITH CHECK ADD  CONSTRAINT [FK_WardrobeItem_ItemType] FOREIGN KEY([TypeID])
REFERENCES [dbo].[ItemType] ([TypeID])
GO
ALTER TABLE [dbo].[WardrobeItem] CHECK CONSTRAINT [FK_WardrobeItem_ItemType]
GO
ALTER TABLE [dbo].[WardrobeItem]  WITH CHECK ADD  CONSTRAINT [FK_WardrobeItem_Ocassions] FOREIGN KEY([OcassionID])
REFERENCES [dbo].[Ocassions] ([OcassionID])
GO
ALTER TABLE [dbo].[WardrobeItem] CHECK CONSTRAINT [FK_WardrobeItem_Ocassions]
GO
ALTER TABLE [dbo].[WardrobeItem]  WITH CHECK ADD  CONSTRAINT [FK_WardrobeItem_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[WardrobeItem] CHECK CONSTRAINT [FK_WardrobeItem_Seasons]
GO
USE [master]
GO
ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO
