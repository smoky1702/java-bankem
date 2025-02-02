CREATE DATABASE [JAVA6]
GO
USE [JAVA6]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 10/01/2024 6:19:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Token] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 10/01/2024 6:19:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[RoleId] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 10/01/2024 6:19:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [char](4) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 10/01/2024 6:19:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/01/2024 6:19:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 10/01/2024 6:19:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/01/2024 6:19:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Available] [bit] NOT NULL,
	[CategoryId] [char](4) NOT NULL,
	[Describe] [nvarchar](255) NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 10/01/2024 6:19:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/*INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Token]) VALUES (N'admin', N'123', N'Đỗ Thế Huynh', N'huynhdothe5@gmail.com', N'user.png', N'token')*/
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 
GO
/*INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (2, N'admin', N'DIRE')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (3, N'admin', N'STAF')*/
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
/*INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1   ', N'Áo Thun')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'2   ', N'Áo Khoác')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'3   ', N'Áo Sơ mi')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'4   ', N'Quần Tây')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'5   ', N'Quần Jean')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'6   ', N'Giày Tây')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'7   ', N'Túi Xách')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'8   ', N'Vòng Tay')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'9   ', N'Nón Thời trang')
GO*/
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
/*INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1003, N'Áo thun đen', N'1.jpg', 150000, CAST(N'2023-11-30' AS Date), 1, N'1   ', N'Phần mô tả', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1004, N'Áo thun xanh', N'2.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'1   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1005, N'Name Product', N'3.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'1   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1006, N'Name Product', N'4.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'1   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1007, N'Name Product', N'5.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'1   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1008, N'Name Product', N'6.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'1   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1009, N'Name Product', N'7.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'1   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1010, N'Name Product', N'8.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'2   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1011, N'Name Product', N'9.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'2   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1012, N'Name Product', N'10.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'2   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1013, N'Name Product', N'11.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'2   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1014, N'Name Product', N'12.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'2   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1015, N'Name Product', N'13.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'2   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1016, N'Name Product', N'14.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'1   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1017, N'Name Product', N'15.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'1   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1018, N'Name Product', N'16.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'8   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1019, N'Name Product', N'17.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'2   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1020, N'Name Product', N'18.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'2   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1021, N'Name Product', N'19.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'2   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1022, N'Name Product', N'20.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'2   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1023, N'Name Product', N'21.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'2   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1024, N'Name Product', N'22.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'2   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1025, N'Name Product', N'23.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'1   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1026, N'Name Product', N'24.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'4   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1027, N'Name Product', N'25.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'4   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1028, N'Name Product', N'26.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'4   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1029, N'Name Product', N'27.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'8   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1030, N'Name Product', N'28.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'8   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1031, N'Name Product', N'29.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'1   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1032, N'Name Product', N'30.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'5   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1033, N'Name Product', N'31.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'7   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1034, N'Name Product', N'32.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'7   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1035, N'Name Product', N'33.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'7   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1036, N'Name Product', N'34.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'6   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1037, N'Name Product', N'35.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'6   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1038, N'Name Product', N'36.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'6   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1039, N'Name Product', N'37.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'9   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1040, N'Name Product', N'38.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'9   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1041, N'Name Product', N'39.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'4   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1042, N'Name Product', N'40.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'4   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1043, N'Name Product', N'41.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'4   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1044, N'Name Product', N'42.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'5   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1045, N'Name Product', N'43.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'5   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1046, N'Name Product', N'44.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'5   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1047, N'Name Product', N'45.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'5   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1048, N'Name Product', N'46.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'5   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1049, N'Name Product', N'47.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'5   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1050, N'Name Product', N'48.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'5   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1051, N'Name Product', N'49.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'7   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1052, N'Name Product', N'50.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'7   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1053, N'Name Product', N'51.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'7   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1054, N'Name Product', N'52.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'7   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1055, N'Name Product', N'53.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'7   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1056, N'Name Product', N'54.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'7   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1057, N'Name Product', N'55.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'7   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1058, N'Name Product', N'56.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'7   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1059, N'Name Product', N'57.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'7   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1060, N'Name Product', N'58.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'7   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1061, N'Name Product', N'59.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'7   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1062, N'Name Product', N'60.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'7   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1063, N'Name Product', N'61.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'6   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1064, N'Name Product', N'62.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'6   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1065, N'Name Product', N'63.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'6   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1066, N'Name Product', N'64.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'6   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1067, N'Name Product', N'65.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'6   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1068, N'Name Product', N'66.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'6   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1069, N'Name Product', N'67.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'6   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1070, N'Name Product', N'68.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'6   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1071, N'Name Product', N'69.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'9   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1072, N'Name Product', N'70.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'9   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1073, N'Name Product', N'71.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'9   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1074, N'Name Product', N'72.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'9   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1075, N'Name Product', N'73.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'9   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1076, N'Name Product', N'74.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'9   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1077, N'Name Product', N'75.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'3   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1078, N'Name Product', N'76.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'3   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1079, N'Name Product', N'77.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'3   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1080, N'Name Product', N'78.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'3   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1081, N'Name Product', N'79.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'3   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1082, N'Name Product', N'80.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'3   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1083, N'Name Product', N'81.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'3   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1084, N'Name Product', N'82.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'4   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1085, N'Name Product', N'83.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'4   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1086, N'Name Product', N'84.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'4   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1087, N'Name Product', N'85.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'4   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1088, N'Name Product', N'86.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'4   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1089, N'Name Product', N'87.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'4   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1090, N'Name Product', N'88.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'4   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1091, N'Name Product', N'89.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'8   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1092, N'Name Product', N'90.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'8   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1093, N'Name Product', N'91.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'8   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1094, N'Name Product', N'92.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'8   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1095, N'Name Product', N'93.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'8   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1096, N'Name Product', N'94.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'8   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1097, N'Name Product', N'95.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'8   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1098, N'Name Product', N'96.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'1   ', N'Ph?n mô t?', 100)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId], [Describe], [Quantity]) VALUES (1099, N'Name Product', N'97.jpg', 250000, CAST(N'2023-11-30' AS Date), 1, N'8   ', N'Ph?n mô t?', 100)*/
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
/*INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'CUST', N'Customer')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'DIRE', N'Director')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'STAF', N'Staff')*/
GO
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Customers_Photo]  DEFAULT (N'Photo.gif') FOR [Photo]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_OrderDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Image]  DEFAULT (N'Product.gif') FOR [Image]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ProductDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Available]  DEFAULT ((1)) FOR [Available]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Accounts]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Roles]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tiếng Việt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chi tiết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá bán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng mua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ nhận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sản xuất' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đang kinh doanh ?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Available'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại, FK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
