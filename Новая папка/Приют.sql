USE [Shelter]
GO
/****** Object:  Table [dbo].[Dogs]    Script Date: 28.11.2022 19:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dogs](
	[idDog] [int] IDENTITY(1,1) NOT NULL,
	[Nickname] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[Breed] [nvarchar](50) NULL,
	[Finding] [nvarchar](50) NULL,
	[Weight] [int] NULL,
	[FK_Guardians] [int] NULL,
	[FK_Shelters] [int] NULL,
 CONSTRAINT [PK_Dogs] PRIMARY KEY CLUSTERED 
(
	[idDog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guardians]    Script Date: 28.11.2022 19:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guardians](
	[idGuard] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Phone] [int] NULL,
 CONSTRAINT [PK_Guardians] PRIMARY KEY CLUSTERED 
(
	[idGuard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shelters]    Script Date: 28.11.2022 19:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shelters](
	[idShelt] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Places] [int] NULL,
 CONSTRAINT [PK_Shelters] PRIMARY KEY CLUSTERED 
(
	[idShelt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dogs] ON 

INSERT [dbo].[Dogs] ([idDog], [Nickname], [Age], [Breed], [Finding], [Weight], [FK_Guardians], [FK_Shelters]) VALUES (1, N'Агни', 3, N'Сибирский хаски', N'Подвал', 23, 1, 1)
INSERT [dbo].[Dogs] ([idDog], [Nickname], [Age], [Breed], [Finding], [Weight], [FK_Guardians], [FK_Shelters]) VALUES (2, N'Вихрь', 8, N'Ка де Бо', N'Лес "Хайват"', 10, 2, 2)
INSERT [dbo].[Dogs] ([idDog], [Nickname], [Age], [Breed], [Finding], [Weight], [FK_Guardians], [FK_Shelters]) VALUES (3, N'Кларк', 4, N'Кавалер-кинг-чарльз-спаниэль', N'Заброшенное здание', 8, NULL, 3)
INSERT [dbo].[Dogs] ([idDog], [Nickname], [Age], [Breed], [Finding], [Weight], [FK_Guardians], [FK_Shelters]) VALUES (4, N'Сандро', 7, N'Кане-корсо', N'Мусорка', 12, 3, 4)
INSERT [dbo].[Dogs] ([idDog], [Nickname], [Age], [Breed], [Finding], [Weight], [FK_Guardians], [FK_Shelters]) VALUES (5, N'Базилио', 1, N'Кеесхонд', N'На дороге', 15, NULL, 1)
INSERT [dbo].[Dogs] ([idDog], [Nickname], [Age], [Breed], [Finding], [Weight], [FK_Guardians], [FK_Shelters]) VALUES (6, N'Абдула', 9, N'Немецкая овчарка', N'У неблагополучной хозяйки', 25, 4, 2)
INSERT [dbo].[Dogs] ([idDog], [Nickname], [Age], [Breed], [Finding], [Weight], [FK_Guardians], [FK_Shelters]) VALUES (7, N'Вавила', 3, N'Пекинес', N'На озере "Лакушино"', 14, 5, 3)
INSERT [dbo].[Dogs] ([idDog], [Nickname], [Age], [Breed], [Finding], [Weight], [FK_Guardians], [FK_Shelters]) VALUES (8, N'Кай', 5, N'Сиба-Ину', N'На стройке', 12, NULL, 4)
INSERT [dbo].[Dogs] ([idDog], [Nickname], [Age], [Breed], [Finding], [Weight], [FK_Guardians], [FK_Shelters]) VALUES (9, N'Агро', 2, N'Хоккайдо', N'Корабль', 10, NULL, 1)
INSERT [dbo].[Dogs] ([idDog], [Nickname], [Age], [Breed], [Finding], [Weight], [FK_Guardians], [FK_Shelters]) VALUES (10, N'Колумб', 8, N'Шелти', N'На горе "Шанти"', 7, NULL, 2)
SET IDENTITY_INSERT [dbo].[Dogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Guardians] ON 

INSERT [dbo].[Guardians] ([idGuard], [FirstName], [LastName], [Phone]) VALUES (1, N'Максим', N'Розанов', 48745678)
INSERT [dbo].[Guardians] ([idGuard], [FirstName], [LastName], [Phone]) VALUES (2, N'Иван', N'Виноградов', 24634366)
INSERT [dbo].[Guardians] ([idGuard], [FirstName], [LastName], [Phone]) VALUES (3, N'Мария', N'Туманова', 23575647)
INSERT [dbo].[Guardians] ([idGuard], [FirstName], [LastName], [Phone]) VALUES (4, N'София', N'Волкова', 27647457)
INSERT [dbo].[Guardians] ([idGuard], [FirstName], [LastName], [Phone]) VALUES (5, N'Андрей', N'Соколов', 37563436)
INSERT [dbo].[Guardians] ([idGuard], [FirstName], [LastName], [Phone]) VALUES (6, N'Даниэль', N'Сизов', 74758678)
SET IDENTITY_INSERT [dbo].[Guardians] OFF
GO
SET IDENTITY_INSERT [dbo].[Shelters] ON 

INSERT [dbo].[Shelters] ([idShelt], [Type], [City], [Places]) VALUES (1, N'Частный', N'Москва', 500)
INSERT [dbo].[Shelters] ([idShelt], [Type], [City], [Places]) VALUES (2, N'Муниципальный', N'Санкт-Петербург', 300)
INSERT [dbo].[Shelters] ([idShelt], [Type], [City], [Places]) VALUES (3, N'Муниципальный', N'Орёл', 200)
INSERT [dbo].[Shelters] ([idShelt], [Type], [City], [Places]) VALUES (4, N'Частный', N'Ростов-на-Дону', 450)
SET IDENTITY_INSERT [dbo].[Shelters] OFF
GO
ALTER TABLE [dbo].[Dogs]  WITH CHECK ADD  CONSTRAINT [FK_Guardians] FOREIGN KEY([FK_Guardians])
REFERENCES [dbo].[Guardians] ([idGuard])
GO
ALTER TABLE [dbo].[Dogs] CHECK CONSTRAINT [FK_Guardians]
GO
ALTER TABLE [dbo].[Dogs]  WITH CHECK ADD  CONSTRAINT [FK_Shelters] FOREIGN KEY([FK_Shelters])
REFERENCES [dbo].[Shelters] ([idShelt])
GO
ALTER TABLE [dbo].[Dogs] CHECK CONSTRAINT [FK_Shelters]
GO
