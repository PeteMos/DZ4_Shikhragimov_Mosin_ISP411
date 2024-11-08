CREATE DATABASE [FurnitureProduction]
GO
USE [FurnitureProduction]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 29.10.2024 14:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 29.10.2024 14:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ContactInfo] [nvarchar](255) NOT NULL,
	[CreatedDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 29.10.2024 14:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IdPosition] [int] NOT NULL,
	[HiringDate] [date] NOT NULL,
	[ClientCount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 29.10.2024 14:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 29.10.2024 14:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IdCategory] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[StockQuantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipments]    Script Date: 29.10.2024 14:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipments](
	[IdShipment] [int] IDENTITY(1,1) NOT NULL,
	[IdProduct] [int] NOT NULL,
	[IdCustomer] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ShipmentDate] [date] NOT NULL,
	[IdEmployee] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdShipment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Стол')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Стул')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Шкаф')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Кровать')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (5, N'Комод')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (6, N'Тумбочка')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (7, N'Полка')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (8, N'Книжный шкаф')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (9, N'Столик')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (10, N'Офисный стол')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (11, N'Барный стул')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (12, N'Диван')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (13, N'Кресло')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (14, N'Пуф')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (15, N'Обеденный стол')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (16, N'Журнальный стол')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (17, N'Шкаф-купе')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (18, N'Витрина')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (19, N'Стеллаж')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (20, N'Кухонный стол')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (1, N'Алексей Смирнов', N'alexey@mail.ru', CAST(N'2021-01-10' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (2, N'Ирина Васильева', N'irina@mail.ru', CAST(N'2020-05-15' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (3, N'Сергей Петров', N'sergey@mail.ru', CAST(N'2022-03-20' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (4, N'Анна Кузнецова', N'anna@mail.ru', CAST(N'2019-12-01' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (5, N'Дмитрий Сидоров', N'dmitry@mail.ru', CAST(N'2020-07-30' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (6, N'Ольга Федорова', N'olga@mail.ru', CAST(N'2021-09-15' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (7, N'Петр Иванов', N'petr@mail.ru', CAST(N'2018-11-10' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (8, N'Екатерина Соколова', N'ekaterina@mail.ru', CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (9, N'Константин Михайлов', N'konstantin@mail.ru', CAST(N'2020-02-14' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (10, N'Татьяна Лебедева', N'tatiana@mail.ru', CAST(N'2019-08-18' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (11, N'Владислав Ковалев', N'vladimir@mail.ru', CAST(N'2020-10-05' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (12, N'Светлана Петрова', N'svetlana@mail.ru', CAST(N'2021-05-22' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (13, N'Николай Ермаков', N'nikolai@mail.ru', CAST(N'2020-03-30' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (14, N'Анастасия Григорьева', N'anastasia@mail.ru', CAST(N'2019-04-28' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (15, N'Валерий Зайцев', N'valery@mail.ru', CAST(N'2021-12-01' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (16, N'Артем Миронов', N'artem@mail.ru', CAST(N'2022-01-15' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (17, N'Юлия Сидорова', N'yulia@mail.ru', CAST(N'2020-06-11' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (18, N'Игорь Смирнов', N'igor@mail.ru', CAST(N'2021-03-17' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (19, N'Мария Петрова', N'maria@mail.ru', CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Customers] ([Id], [Name], [ContactInfo], [CreatedDate]) VALUES (20, N'Денис Кузьмина', N'denis@mail.ru', CAST(N'2019-09-09' AS Date))
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (1, N'Иван Иванов', 1, CAST(N'2021-01-15' AS Date), 50)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (2, N'Петр Петров', 2, CAST(N'2020-03-10' AS Date), 30)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (3, N'Анна Смирнова', 3, CAST(N'2022-06-20' AS Date), 20)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (4, N'Ольга Сидорова', 4, CAST(N'2019-11-05' AS Date), 15)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (5, N'Алексей Кузнецов', 5, CAST(N'2020-02-12' AS Date), 10)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (6, N'Мария Васильева', 6, CAST(N'2018-04-18' AS Date), 5)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (7, N'Сергей Михайлов', 7, CAST(N'2021-09-30' AS Date), 25)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (8, N'Екатерина Федорова', 8, CAST(N'2020-07-14' AS Date), 12)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (9, N'Дмитрий Степанов', 9, CAST(N'2019-08-22' AS Date), 18)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (10, N'Светлана Николаева', 10, CAST(N'2022-05-11' AS Date), 22)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (11, N'Артем Ковалев', 11, CAST(N'2021-10-01' AS Date), 14)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (12, N'Ирина Лебедева', 12, CAST(N'2020-03-21' AS Date), 17)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (13, N'Николай Петрович', 13, CAST(N'2018-12-15' AS Date), 9)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (14, N'Татьяна Миронова', 14, CAST(N'2021-07-30' AS Date), 11)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (15, N'Константин Зайцев', 15, CAST(N'2019-05-19' AS Date), 8)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (16, N'Оксана Кузьмина', 16, CAST(N'2020-11-11' AS Date), 13)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (17, N'Валерий Ермаков', 17, CAST(N'2021-02-20' AS Date), 7)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (18, N'Анастасия Григорьева', 18, CAST(N'2019-06-25' AS Date), 16)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (19, N'Владислав Борисов', 19, CAST(N'2020-01-31' AS Date), 4)
INSERT [dbo].[Employees] ([Id], [Name], [IdPosition], [HiringDate], [ClientCount]) VALUES (20, N'Юлия Соколова', 20, CAST(N'2021-03-15' AS Date), 6)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([Id], [Name]) VALUES (1, N'Менеджер')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (2, N'Продавец')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (3, N'Кассир')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (4, N'Логист')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (5, N'Складской работник')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (6, N'Директор')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (7, N'Маркетолог')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (8, N'Бухгалтер')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (9, N'Секретарь')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (10, N'Специалист по продажам')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (11, N'Клиентский менеджер')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (12, N'Товаровед')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (13, N'IT-специалист')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (14, N'HR-менеджер')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (15, N'Финансовый аналитик')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (16, N'Рекрутер')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (17, N'Специалист по качеству')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (18, N'Оператор')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (19, N'Заместитель директора')
INSERT [dbo].[Position] ([Id], [Name]) VALUES (20, N'Водитель')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (1, N'Деревянный стол', 1, CAST(15000.00 AS Decimal(18, 2)), 10)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (2, N'Пластиковый стул', 2, CAST(3000.00 AS Decimal(18, 2)), 25)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (3, N'Шкаф для одежды', 3, CAST(20000.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (4, N'Двуспальная кровать', 4, CAST(35000.00 AS Decimal(18, 2)), 8)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (5, N'Комод с ящиками', 5, CAST(12000.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (6, N'Ночной тумбочка', 6, CAST(5000.00 AS Decimal(18, 2)), 15)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (7, N'Полка настенная', 7, CAST(2000.00 AS Decimal(18, 2)), 20)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (8, N'Книжный шкаф', 8, CAST(25000.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (9, N'Столик для ноутбука', 9, CAST(8000.00 AS Decimal(18, 2)), 10)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (10, N'Офисный стол', 10, CAST(18000.00 AS Decimal(18, 2)), 7)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (11, N'Барный стул', 11, CAST(4500.00 AS Decimal(18, 2)), 30)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (12, N'Угловой диван', 12, CAST(40000.00 AS Decimal(18, 2)), 6)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (13, N'Кресло-качалка', 13, CAST(9000.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (14, N'Пуф для отдыха', 14, CAST(3000.00 AS Decimal(18, 2)), 20)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (15, N'Обеденный стол', 15, CAST(22000.00 AS Decimal(18, 2)), 10)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (16, N'Журнальный стол', 16, CAST(7000.00 AS Decimal(18, 2)), 15)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (17, N'Шкаф-купе', 17, CAST(30000.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (18, N'Витрина для посуды', 18, CAST(15000.00 AS Decimal(18, 2)), 8)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (19, N'Стеллаж для книг', 19, CAST(6000.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[Products] ([Id], [Name], [IdCategory], [Price], [StockQuantity]) VALUES (20, N'Кухонный стол', 20, CAST(25000.00 AS Decimal(18, 2)), 5)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipments] ON 

INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (1, 1, 1, 2, CAST(N'2022-06-21' AS Date), 1)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (2, 2, 2, 1, CAST(N'2020-05-20' AS Date), 2)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (3, 3, 3, 3, CAST(N'2022-06-21' AS Date), 3)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (4, 4, 4, 1, CAST(N'2019-12-05' AS Date), 4)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (5, 5, 5, 2, CAST(N'2020-07-31' AS Date), 5)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (6, 6, 6, 4, CAST(N'2021-09-20' AS Date), 6)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (7, 7, 7, 5, CAST(N'2018-11-15' AS Date), 7)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (8, 8, 8, 2, CAST(N'2021-06-30' AS Date), 8)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (9, 9, 9, 3, CAST(N'2020-02-20' AS Date), 9)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (10, 10, 10, 1, CAST(N'2019-08-25' AS Date), 10)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (11, 11, 11, 4, CAST(N'2020-10-10' AS Date), 11)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (12, 12, 12, 2, CAST(N'2021-05-15' AS Date), 12)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (13, 13, 13, 5, CAST(N'2020-03-05' AS Date), 13)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (14, 14, 14, 3, CAST(N'2022-06-21' AS Date), 14)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (15, 15, 15, 2, CAST(N'2022-01-30' AS Date), 15)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (16, 16, 16, 1, CAST(N'2020-11-15' AS Date), 16)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (17, 17, 17, 2, CAST(N'2022-02-01' AS Date), 17)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (18, 18, 18, 3, CAST(N'2019-04-10' AS Date), 18)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (19, 19, 19, 1, CAST(N'2022-01-05' AS Date), 19)
INSERT [dbo].[Shipments] ([IdShipment], [IdProduct], [IdCustomer], [Quantity], [ShipmentDate], [IdEmployee]) VALUES (20, 20, 20, 2, CAST(N'2019-09-15' AS Date), 20)
SET IDENTITY_INSERT [dbo].[Shipments] OFF
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Position] FOREIGN KEY([IdPosition])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Position]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Category] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Category]
GO
ALTER TABLE [dbo].[Shipments]  WITH CHECK ADD  CONSTRAINT [FK_Shipments_Customers] FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Shipments] CHECK CONSTRAINT [FK_Shipments_Customers]
GO
ALTER TABLE [dbo].[Shipments]  WITH CHECK ADD  CONSTRAINT [FK_Shipments_Employees] FOREIGN KEY([IdEmployee])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[Shipments] CHECK CONSTRAINT [FK_Shipments_Employees]
GO
ALTER TABLE [dbo].[Shipments]  WITH CHECK ADD  CONSTRAINT [FK_Shipments_Products] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Shipments] CHECK CONSTRAINT [FK_Shipments_Products]
GO
