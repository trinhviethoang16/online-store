USE [master]
GO
/****** Object:  Database [ProjectOnlineStore]    Script Date: 12/22/2022 5:36:02 PM ******/
CREATE DATABASE [ProjectOnlineStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectOnlineStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjectOnlineStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectOnlineStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProjectOnlineStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProjectOnlineStore] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectOnlineStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectOnlineStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectOnlineStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectOnlineStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectOnlineStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectOnlineStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectOnlineStore] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProjectOnlineStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectOnlineStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectOnlineStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectOnlineStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectOnlineStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectOnlineStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectOnlineStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectOnlineStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectOnlineStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectOnlineStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectOnlineStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectOnlineStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectOnlineStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectOnlineStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectOnlineStore] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ProjectOnlineStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectOnlineStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectOnlineStore] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectOnlineStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectOnlineStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectOnlineStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectOnlineStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectOnlineStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectOnlineStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProjectOnlineStore] SET QUERY_STORE = OFF
GO
USE [ProjectOnlineStore]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/22/2022 5:36:02 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/22/2022 5:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/22/2022 5:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/22/2022 5:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/22/2022 5:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/22/2022 5:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/22/2022 5:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Age] [int] NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/22/2022 5:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/22/2022 5:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProducts]    Script Date: 12/22/2022 5:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
	[Total] [int] NULL,
 CONSTRAINT [PK_OrderProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/22/2022 5:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[Status] [nvarchar](max) NULL,
	[CreateAt] [datetime2](7) NULL,
	[Paid] [bit] NULL,
	[PaymentDate] [datetime2](7) NULL,
	[Note] [nvarchar](max) NULL,
	[Total] [float] NULL,
	[UserName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/22/2022 5:36:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Detail] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Star] [int] NOT NULL,
	[BestSellers] [bit] NULL,
	[Sales] [float] NOT NULL,
	[Homepage] [bit] NULL,
	[Remains] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221212200109_db', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221213104221_db1', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221214192954_db2', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221215033502_db3', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221217091355_db4', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221220081328_db5', N'6.0.10')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'Adminitrators', N'Admin', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2', N'Manager', N'Manage', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0e837304-e2ec-45f0-8c6a-cb03638b50af', N'1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Phone], [Address], [Age], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0e837304-e2ec-45f0-8c6a-cb03638b50af', N'0123456789', N'XYZ 123', 20, N'Ad', N'Min', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAENGXMHEb0RXkOi/2QI6viN7EM8AwgUiwh8jJlF6SRqT+YyLS1Ch0FR6QWYkO/CHqkA==', N'ANC345MTBGNFVRQBFP7CMD34F4SEEKJQ', N'75512657-7cd5-40e1-af7e-287f29c7c774', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Phone], [Address], [Age], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8a93769e-c579-4872-b3e3-4bfe6631621f', N'0123456789', N'ABC 123', 20, N'Nguyen', N'Nguyen', N'ngon@gmail.com', N'NGON@GMAIL.COM', N'ngon@gmail.com', N'NGON@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEFZ3A4saloOhoPa3JCDFPDI4S8IZu9NfP+NluJpJ+gr+VPXvPTbuQE3RdmNpWBkBbg==', N'LQGNKO4SRCGE6SH7ZI223YYJWTUUPX2G', N'0e2f8314-274d-44c5-85fb-95c943bcaf2b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Phone], [Address], [Age], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8ed35af4-1fda-4d0b-ad78-74209e4ba895', N'0123456789', N'XYZ 123', 20, N'Trinh', N'Hoang', N'hoang@gmail.com', N'HOANG@GMAIL.COM', N'hoang@gmail.com', N'HOANG@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJhJo9eNnL96PvIyFHLVTouR/NLN1Wt74k2ybWZmRbdgcYb+87MK3NTfRdROpU+ZEA==', N'J24KNOZZJVJPKMXKWTUYW6LUS3CHXJZF', N'e0f20317-575d-4190-9b3b-33711b51fcac', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Phone], [Address], [Age], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e9becc4d-6044-4658-bcdf-8cefdd0805f1', N'0123456789', N'ABC 123', 20, N'Nguyen', N'Nguyen', N'nguyen@gmail.com', N'NGUYEN@GMAIL.COM', N'nguyen@gmail.com', N'NGUYEN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOaRzfxmnpK2c7Q3wW2cu8NLsMHyiFKoFOpEQP3vajVvOi5ARK2t5Pbba6sH9yQdrg==', N'WSJW74QWTTISDS72UHAM2XFOPRL5BK4U', N'0500df0c-47e3-4ee0-8758-c1c5e59cdad5', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'8ed35af4-1fda-4d0b-ad78-74209e4ba895', N'[AspNetUserStore]', N'AuthenticatorKey', N'5ESU4ZP2NXAMQU5EVOGHOXRJWI3TQ7MN')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (1, N'Technology', N'Công nghệ')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (2, N'Fashion', N'Thời trang')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (3, N'Toys', N'Đồ chơi')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (4, N'Cosmetics', N'Mỹ phẩm')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (5, N'Jewelry', N'Trang sức')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (6, N'Sports', N'Thể thao')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (7, N'Food', N'Thực phẩm')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (8, N'Watches', N'Đồng hồ')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (9, N'Balo', N'Cặp xách')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (10, N'Book', N'Sách')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderProducts] ON 

INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (1, 9, 1, 5, 100, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (2, 17, 2, 12, 84, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (3, 9, 2, 6, 120, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (4, 9, 3, 1, 20, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (5, 7, 4, 1, 10, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (6, 5, 5, 2, 100, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (7, 9, 5, 2, 40, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (8, 12, 5, 2, 40, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (9, 17, 6, 1, 7, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (10, 14, 7, 1, 3, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (11, 2, 8, 1, 20, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (12, 5, 9, 1, 50, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (13, 5, 10, 1, 50, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (14, 5, 11, 1, 50, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (15, 5, 12, 1, 50, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (16, 2, 13, 1, 20, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (17, 5, 14, 1, 50, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (18, 2, 15, 1, 20, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (19, 7, 16, 1, 10, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (20, 10, 17, 1, 150, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (21, 5, 17, 1, 50, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (22, 18, 18, 1, 70, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (23, 8, 19, 3, 240, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (24, 4, 19, 3, 15, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (25, 19, 20, 1, 35, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (26, 10, 21, 1, 150, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (27, 11, 22, 2, 32, NULL)
SET IDENTITY_INSERT [dbo].[OrderProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (1, N'8ed35af4-1fda-4d0b-ad78-74209e4ba895', NULL, CAST(N'2022-12-14T19:14:04.4400568' AS DateTime2), NULL, NULL, NULL, 100, N'nguyen@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (2, N'8ed35af4-1fda-4d0b-ad78-74209e4ba895', NULL, CAST(N'2022-12-14T19:36:08.9787320' AS DateTime2), NULL, NULL, NULL, 204, N'hoang@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (3, N'8ed35af4-1fda-4d0b-ad78-74209e4ba895', NULL, CAST(N'2022-12-14T19:37:42.6154497' AS DateTime2), NULL, NULL, NULL, 20, N'nguyen@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (4, N'8ed35af4-1fda-4d0b-ad78-74209e4ba895', NULL, CAST(N'2022-12-15T01:39:05.5467524' AS DateTime2), NULL, NULL, NULL, 10, N'nguyen@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (5, N'e9becc4d-6044-4658-bcdf-8cefdd0805f1', NULL, CAST(N'2022-12-15T02:50:05.1963570' AS DateTime2), NULL, NULL, NULL, 180, N'nguyen@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (6, N'e9becc4d-6044-4658-bcdf-8cefdd0805f1', NULL, CAST(N'2022-12-15T02:54:04.4089840' AS DateTime2), NULL, NULL, NULL, 7, N'hoang@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (7, N'e9becc4d-6044-4658-bcdf-8cefdd0805f1', NULL, CAST(N'2022-12-15T02:59:13.7995485' AS DateTime2), NULL, NULL, NULL, 3, N'nguyen@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (8, N'e9becc4d-6044-4658-bcdf-8cefdd0805f1', NULL, CAST(N'2022-12-15T03:00:55.2572563' AS DateTime2), NULL, NULL, NULL, 20, N'hoang@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (9, N'e9becc4d-6044-4658-bcdf-8cefdd0805f1', NULL, CAST(N'2022-12-15T03:10:03.4446669' AS DateTime2), NULL, NULL, NULL, 50, N'nguyen@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (10, N'e9becc4d-6044-4658-bcdf-8cefdd0805f1', NULL, CAST(N'2022-12-15T03:11:49.7135218' AS DateTime2), NULL, NULL, NULL, 50, N'hoang@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (11, N'e9becc4d-6044-4658-bcdf-8cefdd0805f1', NULL, CAST(N'2022-12-15T03:20:42.3276583' AS DateTime2), NULL, NULL, NULL, 50, N'nguyen@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (12, N'e9becc4d-6044-4658-bcdf-8cefdd0805f1', NULL, CAST(N'2022-12-15T03:22:22.6293871' AS DateTime2), NULL, NULL, NULL, 50, N'nguyen@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (13, N'e9becc4d-6044-4658-bcdf-8cefdd0805f1', NULL, CAST(N'2022-12-15T03:27:53.9241745' AS DateTime2), NULL, NULL, NULL, 20, N'nguyen@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (14, N'e9becc4d-6044-4658-bcdf-8cefdd0805f1', NULL, CAST(N'2022-12-15T03:29:22.9009387' AS DateTime2), NULL, NULL, NULL, 50, N'hoang@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (15, N'e9becc4d-6044-4658-bcdf-8cefdd0805f1', NULL, CAST(N'2022-12-15T03:38:12.1392308' AS DateTime2), NULL, NULL, NULL, 20, N'nguyen@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (16, N'e9becc4d-6044-4658-bcdf-8cefdd0805f1', NULL, CAST(N'2022-12-15T03:39:01.9306464' AS DateTime2), NULL, NULL, NULL, 10, N'hoang@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (17, N'e9becc4d-6044-4658-bcdf-8cefdd0805f1', NULL, CAST(N'2022-12-15T03:55:24.8236456' AS DateTime2), NULL, NULL, NULL, 200, N'nguyen@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (18, N'8ed35af4-1fda-4d0b-ad78-74209e4ba895', NULL, CAST(N'2022-12-15T07:57:08.9746624' AS DateTime2), NULL, NULL, NULL, 70, N'hoang@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (19, N'8a93769e-c579-4872-b3e3-4bfe6631621f', NULL, CAST(N'2022-12-15T08:26:14.2160163' AS DateTime2), NULL, NULL, NULL, 255, N'ngon@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (20, N'e9becc4d-6044-4658-bcdf-8cefdd0805f1', NULL, CAST(N'2022-12-16T16:55:47.2130417' AS DateTime2), NULL, NULL, NULL, 35, N'nguyen@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (21, N'e9becc4d-6044-4658-bcdf-8cefdd0805f1', NULL, CAST(N'2022-12-16T16:56:50.2601638' AS DateTime2), NULL, NULL, NULL, 150, N'nguyen@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreateAt], [Paid], [PaymentDate], [Note], [Total], [UserName]) VALUES (22, N'e9becc4d-6044-4658-bcdf-8cefdd0805f1', NULL, CAST(N'2022-12-21T09:54:20.3644682' AS DateTime2), NULL, NULL, NULL, 32, N'nguyen@gmail.com')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (1, N'Màn hình', NULL, NULL, 1, 150, N'https://fptshop.com.vn/Uploads/Originals/2022/8/26/637971113774126791_man-hinh-dell-ultrasharp-u2422h-trang-dd.jpg', 3, NULL, 10, NULL, 100)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (2, N'Thời trang nam', NULL, NULL, 2, 20, N'https://360boutique.vn/wp-content/uploads/2018/08/5-xu-huong-thoi-trang-nam-khong-the-bo-lo-trong-nam-nay-hinh-anh-1.jpg', 3, NULL, 20, 1, 92)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (3, N'Cặp xách', NULL, NULL, 9, 30, N'https://bizweb.sapocdn.net/100/462/540/products/teal.jpg?v=1668067226140', 3, NULL, 30, 1, 86)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (4, N'Thịt', NULL, NULL, 7, 5, N'https://product.hstatic.net/200000356473/product/ba-roi-baf_1bfa35641557413cb431453e54087300_grande_f11a57c1d0944c828ecf247852096342_large.jpg', 4, NULL, 40, NULL, 75)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (5, N'Nhẫn', NULL, NULL, 5, 50, N'https://crownhanoi.com/wp-content/uploads/2021/01/R106_FRENCH_PAVE_RING.jpg', 4, NULL, 30, NULL, 15)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (6, N'Tập vở', NULL, NULL, 10, 3, N'https://cf.shopee.vn/file/27f675b15ef9e0b7608bb4c1b87a32f6', 3, NULL, 50, NULL, 25)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (7, N'Mô hình', NULL, NULL, 3, 10, N'https://vn-live-01.slatic.net/p/acc536f37101a8204ac8269c32681ded.jpg', 2, NULL, 30, NULL, 18)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (8, N'Đồng hồ nam', NULL, NULL, 8, 80, N'https://cdn.tgdd.vn/Products/Images/7264/296916/viwat-v9-w1079d-nam-thumb-600x600.jpg', 4, NULL, 10, NULL, 68)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (9, N'Sữa rửa mặt', NULL, NULL, 4, 20, N'https://media.hasaki.vn/wysiwyg/HaNguyen1/sua-rua-mat-simple-giup-da-sach-thoang-150ml-1.jpg', 5, NULL, 5, NULL, 73)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (10, N'Dây chuyền', NULL, NULL, 5, 150, N'https://product.hstatic.net/1000112469/product/dcmamd578_1_712fc0502c214e9a805b9834fd71dadd_grande.jpg', 2, NULL, 50, 1, 91)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (11, N'Áo thể thao', NULL, NULL, 6, 40, N'https://bizweb.dktcdn.net/100/239/277/products/f95d71a5-9ea2-4f5d-aafe-d931ad73ca4f.jpg?v=1666168339467', 4, NULL, 60, NULL, 14)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (12, N'Túi đeo chéo', NULL, NULL, 9, 20, N'https://bizweb.dktcdn.net/100/044/266/products/tui-deo-cheo-sieu-nhe-thiet-ke-toi-da-tien-ich-kingbag-bamboo-2ok.jpg?v=1653902515347', 4, NULL, 40, NULL, 65)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (13, N'Thời trang nữ', NULL, NULL, 2, 15, N'https://cf.shopee.vn/file/c3a2706173278902b819ec2ce78651ec', 5, NULL, 30, NULL, 35)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (14, N'Nước ngọt', NULL, NULL, 7, 3, N'https://cdn.tatmart.com/images/detailed/79/N%C6%B0%E1%BB%9Bc_ng%E1%BB%8Dt_c%C3%B3_gaz_Bidrico_h%C6%B0%C6%A1ng_x%C3%A1_x%E1%BB%8B.jpg', 5, NULL, 10, 1, 317)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (15, N'Truyện tranh', NULL, NULL, 10, 5, N'https://product.hstatic.net/200000343865/product/son-goal_e58073e5b9cb462a90c52f699e271a46_master.jpg', 4, NULL, 50, 1, 59)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (16, N'Điện thoại', NULL, NULL, 1, 300, N'https://cdn.tgdd.vn/Products/Images/42/247508/iphone-14-pro-tim-thumb-600x600.jpg', 5, NULL, 35, 1, 27)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (17, N'Gấu bông', NULL, NULL, 3, 7, N'https://traveltop.vn/wp-content/uploads/2020/02/1a9f64d1cb42fd84efa8d4e76f7325d8-680x680.jpg', 3, NULL, 50, 1, 162)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (18, N'Đồng hồ nữ', NULL, NULL, 8, 70, N'https://toplist.vn/images/800px/lindo-store-819443.jpg', 2, NULL, 40, 1, 78)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (19, N'Sữa tắm', NULL, NULL, 4, 35, N'https://toplist.vn/images/800px/sua-tam-lifebuoy-710402.jpg', 5, NULL, 30, 1, 91)
INSERT [dbo].[Products] ([Id], [Name], [Detail], [Description], [CategoryId], [Price], [Image], [Star], [BestSellers], [Sales], [Homepage], [Remains]) VALUES (20, N'Giày thể thao', NULL, NULL, 6, 70, N'https://product.hstatic.net/1000230642/product/dswh09700hog__5__7700b9d6d9e14237942b4170d9a588ea.jpg', 4, NULL, 20, 1, 55)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 12/22/2022 5:36:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/22/2022 5:36:02 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 12/22/2022 5:36:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 12/22/2022 5:36:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 12/22/2022 5:36:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 12/22/2022 5:36:02 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/22/2022 5:36:02 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderProducts_OrderId]    Script Date: 12/22/2022 5:36:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderProducts_OrderId] ON [dbo].[OrderProducts]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderProducts_ProductId]    Script Date: 12/22/2022 5:36:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderProducts_ProductId] ON [dbo].[OrderProducts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 12/22/2022 5:36:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [UserName]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderProducts]  WITH CHECK ADD  CONSTRAINT [FK_OrderProducts_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProducts] CHECK CONSTRAINT [FK_OrderProducts_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderProducts]  WITH CHECK ADD  CONSTRAINT [FK_OrderProducts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProducts] CHECK CONSTRAINT [FK_OrderProducts_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [ProjectOnlineStore] SET  READ_WRITE 
GO
