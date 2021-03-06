USE [super_Maeket]
GO
/****** Object:  Table [dbo].[department]    Script Date: 5/17/2019 2:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[dep_id] [int] NOT NULL,
	[dep_name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[dep_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[employee]    Script Date: 5/17/2019 2:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[emp_id] [int] NOT NULL,
	[emp_fname] [nvarchar](100) NOT NULL,
	[emp_Lname] [nvarchar](100) NOT NULL,
	[ssn] [bigint] NOT NULL,
	[phone] [bigint] NULL,
	[age] [int] NULL,
	[addresss] [nvarchar](100) NULL,
	[salary] [money] NULL,
	[dep_id] [int] NOT NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[emp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[employee2]    Script Date: 5/17/2019 2:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee2](
	[emp_id] [int] NOT NULL,
	[emp_fname] [nvarchar](100) NOT NULL,
	[emp_Lname] [nvarchar](100) NOT NULL,
	[ssn] [bigint] NOT NULL,
	[phone] [bigint] NOT NULL,
	[age] [int] NOT NULL,
	[addresss] [nvarchar](100) NULL,
	[salary] [money] NULL,
	[dep_id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product]    Script Date: 5/17/2019 2:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[pro_id] [int] IDENTITY(1,1) NOT NULL,
	[pro_name] [nvarchar](100) NOT NULL,
	[price] [float] NOT NULL,
	[Quantity] [float] NULL,
	[sup_id] [int] NOT NULL,
	[dep_id] [int] NOT NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[pro_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product2]    Script Date: 5/17/2019 2:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product2](
	[pro_id] [int] NOT NULL,
	[pro_name] [nvarchar](100) NOT NULL,
	[price] [float] NOT NULL,
	[Quantity] [float] NULL,
	[sup_id] [int] NOT NULL,
	[dep_id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[supplier]    Script Date: 5/17/2019 2:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[supplier](
	[sup_id] [int] NOT NULL,
	[sup_name] [nvarchar](100) NOT NULL,
	[sup_phone] [int] NULL,
	[sup_addresse] [nvarchar](100) NULL,
 CONSTRAINT [PK_supplier] PRIMARY KEY CLUSTERED 
(
	[sup_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[department] ([dep_id], [dep_name]) VALUES (1, N'Food and drinks                                   ')
INSERT [dbo].[department] ([dep_id], [dep_name]) VALUES (2, N'Uniforms for workers                              ')
INSERT [dbo].[department] ([dep_id], [dep_name]) VALUES (3, N'Clean and organize tools                          ')
INSERT [dbo].[department] ([dep_id], [dep_name]) VALUES (4, N'furniture                                         ')
INSERT [dbo].[department] ([dep_id], [dep_name]) VALUES (5, N'Lighting                                          ')
INSERT [dbo].[department] ([dep_id], [dep_name]) VALUES (6, N'Packaging and printing                            ')
INSERT [dbo].[department] ([dep_id], [dep_name]) VALUES (7, N'Health and Personal Care                          ')
INSERT [dbo].[department] ([dep_id], [dep_name]) VALUES (8, N'Equipment                                         ')
INSERT [dbo].[department] ([dep_id], [dep_name]) VALUES (9, N' IT equipment                                     ')
INSERT [dbo].[department] ([dep_id], [dep_name]) VALUES (10, N'Services                                          ')
INSERT [dbo].[department] ([dep_id], [dep_name]) VALUES (11, N'Marketing Advertising                             ')
INSERT [dbo].[department] ([dep_id], [dep_name]) VALUES (12, N'Maintenance and control of insects                ')
INSERT [dbo].[department] ([dep_id], [dep_name]) VALUES (13, N'Number of maintenance tools and maintenance       ')
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (1, N'Ahmed ', N'Raafat', 29903211234567, 1065314905, 20, N'Sohag', 5000.0000, 1)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (2, N'Ahmed ', N'Shehata', 29903598745632, 1169872354, 20, N'Qena_Qeft', 4563.0000, 1)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (3, N'Ahmed ', N'Mabrouk', 29968435687455, 1135987562, 20, N'Qena_Farshout', 2313.0000, 1)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (4, N'Ahmed ', N'Khalid ', 29957864359784, 1068976579, 20, N'Qena Naga Hammadi', 4689.0000, 2)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (5, N'Ahmed ', N'Mahmoud', 29945612873598, 1165974361, 20, N'Qena', 5646.0000, 1)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (6, N'Ahmed ', N'Harbi', 29965874326984, 1165974359, 20, N'Aswan', 2135.0000, 3)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (7, N'Ahmed ', N'Mohamed Hassan', 29935648712987, 1026987456, 20, N'Qena', 3514.0000, 4)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (8, N'Ahmed ', N'Mansour', 29903211234567, 1065314905, 20, N'Qena Qus', 6541.0000, 4)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (9, N'Osama ', N'Saad El Din', 29954876543298, 1165987453, 20, N'Sohag', 3546.0000, 4)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (10, N'Ashraf ', N'Gamal', 29987564298757, 1268974568, 20, N'Qena_Qeft', 4684.0000, 5)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (11, N'Hussein ', N'Najah', 28875973265665, 1154965465, 20, N'Qena', 1353.0000, 4)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (12, N'Anwar ', N'Juma', 29957846215879, 1012346889, 20, N'Sohag', 4896.0000, 6)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (13, N'Paula ', N'Maher', 29935648791564, 1264798674, 20, N'Sohag', 3153.0000, 7)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (14, N'Hazem ', N'Hammad', 29954687168763, 1015234685, 20, N'Sohag', 5469.0000, 8)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (15, N'Khalid ', N'Mohammed', 29948643546843, 1052348746, 20, N'Qena_Qeft', 2313.0000, 8)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (16, N'rabea', N'adel', 29954896413241, 1024186542, 20, N'Qena', 8478.0000, 8)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (17, N'Solomon ', N'Ali', 59954864156458, 1554864875, 20, N'Sohag', 5466.0000, 9)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (18, N'Taha ', N'Mahmoud', 29954864354988, 1112487468, 20, N'Aswan', 12315.0000, 9)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (19, N'Abdul_Rahman ', N'Mahmoud', 29954156465348, 1154798746, 20, N'Luxor', 3145.0000, 10)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (20, N'Abdul_Rahman ', N'Ahmed', 299548946878552, 1115349886, 20, N'sohag', 21465.0000, 10)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (21, N'Youssab', N'Ezekiel', 29865468746854, 1023548575, 20, N'sohag', 1265.0000, 11)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (22, N'Khalid ', N'Hasan', 29864864168755, 1025489788, 21, N'sohag', 2145.0000, 1)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (23, N'Mahmoud Abou ', N'El Hassan', 29956489476857, 1145987985, 20, N'sohag', 1256.0000, 10)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (24, N'Ahmed ', N'alsid', 29954894765454, 1114564797, 20, N'luxor', 21468.0000, 12)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (25, N'Ibrahim Abdul Ati', N'Abdul Ati', 29848947564988, 1114878789, 21, N'Qena Naga Hammadi', 2146.0000, 1)
INSERT [dbo].[employee] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (26, N'Ahmed ', N'Ramadan', 29845654786478, 1052487458, 21, N'sohag', 6565.0000, 13)
INSERT [dbo].[employee2] ([emp_id], [emp_fname], [emp_Lname], [ssn], [phone], [age], [addresss], [salary], [dep_id]) VALUES (27, N'dfsg', N'dgfh', 9652, 9652, 21, N'dfg', 56.0000, 12)
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (1, N'Kettle Bells', 256, 5, 1, 8)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (2, N'Smith Machine', 20153, 5, 1, 8)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (3, N'Dumbells', 2547, 5, 1, 8)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (4, N'Leg Press', 5798, 5, 1, 8)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (5, N'ICE CREAM ', 5, 200, 2, 1)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (6, N'Chocolate', 5, 55, 2, 1)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (7, N'Chips', 5, 155, 2, 1)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (8, N'Biscuits', 3, 65, 2, 1)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (9, N'EGYTL For Hotel Supplies', 5435, 5, 3, 9)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (10, N'Knorr Brown Gravy Sauce', 15, 45, 4, 1)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (11, N'Knorr Mashed Potato', 10, 15, 4, 1)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (12, N'Delicate Mint', 15, 45, 4, 1)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (13, N'Knorr Demi Glace Powder', 16, 52, 4, 1)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (14, N'Lipton Green Tea Mint - 20 Enveloped Tea Bags', 5, 125, 4, 1)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (15, N'Hot Sauce Heinz', 12, 165, 5, 6)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (16, N'Cheddar Bites', 19, 51, 5, 6)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (18, N'Heinz pack Mayonnaise ', 16, 15, 5, 6)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (19, N'Bonjorno Coffee Beans Machines', 2600, 16, 6, 9)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (20, N'Bonjorno Instant Coffee Machines', 2611, 15, 6, 9)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (21, N'Cooking Mixers', 241, 19, 7, 4)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (23, N' Bakery Equipment', 156, 14, 7, 4)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (24, N'Cozy Lounger - Leather Fushia', 1585, 18, 8, 10)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (26, N'Recliner - Suede Purple', 1594, 15, 8, 10)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (28, N'Hubbly - Leather Baby Blue', 4568, 13, 8, 10)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (30, N'Coffee Machines', 2153, 16, 9, 4)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (34, N' Meat Producing Machines', 5345, 2, 10, 4)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (35, N'Meat Sawing Machines - Meat Cutting Machines', 2345, 4, 10, 4)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (37, N'Meat Mincing Machines', 4885, 15, 10, 4)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (40, N'Home Furniture', 5456, 215, 11, 4)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (41, N'Kitchen Accessories', 5467, 25, 11, 4)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (42, N'DoBites Loyalty Platform', 150, 145, 12, 9)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (43, N'Shoof Dashboard', 246, 24, 12, 9)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (44, N'DoBites Loyalty Platform', 214, 65, 12, 9)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (45, N'Tecnodom', 4555, 21, 13, 10)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (47, N'كونتر استقبال كود', 5465, 12, 14, 10)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (48, N'كونتر استقبال 25 مللى بالكامل ', 1821, 125, 14, 10)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (49, N'Kitchen Tools', 1584, 15, 15, 8)
INSERT [dbo].[product] ([pro_id], [pro_name], [price], [Quantity], [sup_id], [dep_id]) VALUES (50, N'Kitchen Accessories', 4832, 15, 14, 8)
SET IDENTITY_INSERT [dbo].[product] OFF
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (1, N'Sobek_Sports                                      ', 1065314905, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (2, N'EGC Egyptian Co For Food Industries ICEMAN        ', 1145314901, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (3, N'Unilever Food Solutions                           ', 1168974123, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (4, N'Heinz Egypt                                       ', 1065987423, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (5, N'Farm Frites                                       ', 1165978415, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (6, N'Arab Cultivators El Tanbouli And Co               ', 1165314898, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (7, N'Giardino                                          ', 1198745621, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (8, N'Bonjorno Cafe                                     ', 1265387942, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (9, N'Union Trading Organizaation                       ', 1265314897, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (10, N'Antakh                                            ', 1236987542, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (11, N'El Shalakany For Engineering                      ', 1598746532, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (12, N'Barista Group                                     ', 1598541268, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (13, N'Egitto Coffee                                     ', 1235987456, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (14, N'EL SANAN                                          ', 1235987456, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (15, N'Food Lover                                        ', 1235987456, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (16, N'Egyptian European Co for Food Products            ', 1235987456, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (17, N'G Stores                                          ', 1235987456, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (18, N'BAKELAND Egypt                                    ', 1235987456, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (19, N'Simple Touch                                      ', 1235987456, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (20, N'Scientific Company                                ', 1235987456, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (21, N'Food Home                                         ', 1235987456, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (22, N'Egypt Bakery Stores SAE                           ', 1235987456, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (23, N'MIRATH MASR                                       ', 1235987456, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (24, N'El Waha Trading And Supplies                      ', 1235987456, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (25, N'Ramex For Hotel Supplies SAE                      ', 1235987456, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (26, N'Arab French Company                               ', 1235987456, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (27, N'El Yasmina Regina                                 ', 1235987456, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
INSERT [dbo].[supplier] ([sup_id], [sup_name], [sup_phone], [sup_addresse]) VALUES (28, N'Metro Pack                                        ', 1235987456, N'471 Ard El Dfaa El Watany
Fifth Settlement, Cairo, Egypt                                           ')
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_department] FOREIGN KEY([dep_id])
REFERENCES [dbo].[department] ([dep_id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_department]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_department] FOREIGN KEY([dep_id])
REFERENCES [dbo].[department] ([dep_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_department]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_supplier] FOREIGN KEY([sup_id])
REFERENCES [dbo].[supplier] ([sup_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_supplier]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [ckeck_price] CHECK  (([price]>(0)))
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [ckeck_price]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [ckeck_quntity] CHECK  (([Quantity]>(0)))
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [ckeck_quntity]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [ckeck_salary] CHECK  (([price]>(0)))
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [ckeck_salary]
GO
/****** Object:  StoredProcedure [dbo].[dep_insert]    Script Date: 5/17/2019 2:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[dep_insert] 

(@dep_name nchar(50)  )

as

begin 

insert into department (dep_name  )values(@dep_name  )

end
GO
/****** Object:  StoredProcedure [dbo].[emp_insert]    Script Date: 5/17/2019 2:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[emp_insert] 

( @emp_fname nchar(50) ,@emp_Lname nchar(50) ,@ssn  bigint  ,@phone  bigint  ,@age int ,@addresss nchar(50),@salary money,@dep_id int )

as

begin 

insert into employee ( emp_fname  ,emp_Lname  ,ssn  ,phone   ,age ,addresss,salary ,dep_id  )values

( @emp_fname  ,@emp_Lname  ,@ssn  ,@phone   ,@age ,@addresss ,@salary,@dep_id  )

end
GO
/****** Object:  StoredProcedure [dbo].[pr_insert]    Script Date: 5/17/2019 2:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 create proc [dbo].[pr_insert] 

(@pro_name nchar(50) ,@price float,@Quantity float , @sup_id int,@dep_id int )

as

begin 

insert into product  (pro_name  ,price ,Quantity  , sup_id , dep_id)values(@pro_name  ,@price ,@Quantity  , @sup_id , @dep_id )

end
GO
/****** Object:  StoredProcedure [dbo].[sup_insert]    Script Date: 5/17/2019 2:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sup_insert] 
(@sup_name nchar(50),@sup_phone int ,@sup_addresse nchar(50) )
as
begin 
insert into supplier (sup_name,sup_phone ,sup_addresse ) values(   @sup_name,@sup_phone ,@sup_addresse  
  )
end
GO
