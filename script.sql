USE [MyAcademy]
GO
/****** Object:  Table [dbo].[Curators]    Script Date: 12.08.2024 16:13:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curators](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 12.08.2024 16:13:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Financing] [money] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[FacultyId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 12.08.2024 16:13:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Financing] [money] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 12.08.2024 16:13:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Year] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupsCurators]    Script Date: 12.08.2024 16:13:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupsCurators](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CuratorId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupsLectures]    Script Date: 12.08.2024 16:13:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupsLectures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[LectureId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lectures]    Script Date: 12.08.2024 16:13:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lectures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LectureRoom] [nvarchar](max) NOT NULL,
	[SubjectId] [int] NOT NULL,
	[TeacherId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 12.08.2024 16:13:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 12.08.2024 16:13:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Salary] [money] NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Curators] ON 

INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (1, N'Amber', N'Layburn')
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (2, N'Gilli', N'Ranner')
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (3, N'Cathie', N'Willett')
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (4, N'Fredia', N'Slight')
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (5, N'Mariska', N'De Paepe')
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (6, N'Alys', N'Learoyd')
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (7, N'Konstance', N'Clunie')
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (8, N'Niall', N'Skill')
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (9, N'Hedy', N'Shitliff')
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (10, N'Colman', N'Gathercole')
SET IDENTITY_INSERT [dbo].[Curators] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (17, 2161.9100, N'Clothing', 1)
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (18, 2607.8000, N'Outdoors', 5)
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (19, 2613.9800, N'Automotive', 1)
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (20, 1275.7900, N'Grocery', 2)
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (21, 2982.7000, N'Garden', 5)
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId]) VALUES (22, 587.5300, N'Games', 5)
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Faculties] ON 

INSERT [dbo].[Faculties] ([Id], [Financing], [Name]) VALUES (1, 1110.3300, N'Gibson, Strosin and Cruickshank')
INSERT [dbo].[Faculties] ([Id], [Financing], [Name]) VALUES (2, 2472.6600, N'Kunze, VonRueden and Deckow')
INSERT [dbo].[Faculties] ([Id], [Financing], [Name]) VALUES (3, 2673.1500, N'Keeling-Schultz')
INSERT [dbo].[Faculties] ([Id], [Financing], [Name]) VALUES (4, 1498.7000, N'Muller, Kuhlman and Langworth')
INSERT [dbo].[Faculties] ([Id], [Financing], [Name]) VALUES (5, 1169.8500, N'Goldner-Hammes')
INSERT [dbo].[Faculties] ([Id], [Financing], [Name]) VALUES (6, 1021.8200, N'Hoppe-Torp')
INSERT [dbo].[Faculties] ([Id], [Financing], [Name]) VALUES (7, 1210.5800, N'King, Johns and Bayer')
INSERT [dbo].[Faculties] ([Id], [Financing], [Name]) VALUES (8, 1583.3100, N'Nikolaus-Leffler')
INSERT [dbo].[Faculties] ([Id], [Financing], [Name]) VALUES (9, 953.5100, N'Grady, Tromp and Nikolaus')
INSERT [dbo].[Faculties] ([Id], [Financing], [Name]) VALUES (10, 2103.8500, N'Schamberger LLC')
SET IDENTITY_INSERT [dbo].[Faculties] OFF
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([Id], [Name], [Year], [DepartmentId]) VALUES (18, N'flickr.com', 2, 17)
INSERT [dbo].[Groups] ([Id], [Name], [Year], [DepartmentId]) VALUES (19, N'time.com', 3, 18)
INSERT [dbo].[Groups] ([Id], [Name], [Year], [DepartmentId]) VALUES (20, N'samsung.com', 5, 19)
INSERT [dbo].[Groups] ([Id], [Name], [Year], [DepartmentId]) VALUES (21, N'intel.com', 4, 20)
INSERT [dbo].[Groups] ([Id], [Name], [Year], [DepartmentId]) VALUES (22, N'ted.com', 5, 21)
INSERT [dbo].[Groups] ([Id], [Name], [Year], [DepartmentId]) VALUES (23, N'webnode.com', 4, 22)
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupsCurators] ON 

INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (1, 6, 21)
SET IDENTITY_INSERT [dbo].[GroupsCurators] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupsLectures] ON 

INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (2, 20, 3)
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LectureId]) VALUES (3, 22, 1)
SET IDENTITY_INSERT [dbo].[GroupsLectures] OFF
GO
SET IDENTITY_INSERT [dbo].[Lectures] ON 

INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId]) VALUES (1, N'philosophy', 6, 2)
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId]) VALUES (2, N'mathematics', 15, 3)
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId]) VALUES (3, N'architecture', 11, 5)
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId]) VALUES (4, N'literature', 4, 7)
INSERT [dbo].[Lectures] ([Id], [LectureRoom], [SubjectId], [TeacherId]) VALUES (5, N'astronomia', 20, 8)
SET IDENTITY_INSERT [dbo].[Lectures] OFF
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON 

INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (5, N'Alia')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (10, N'Armando')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (9, N'Asia')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (19, N'Blake')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (1, N'Ceciley')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (15, N'Cosimo')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (20, N'Glennie')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (3, N'Guido')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (14, N'Hadrian')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (18, N'Iolande')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (16, N'Joel')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (4, N'Katha')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (11, N'Mallorie')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (13, N'Maritsa')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (6, N'Mordecai')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (2, N'Nell')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (7, N'Pat')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (8, N'Ricoriki')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (12, N'Susannah')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (17, N'Templeton')
SET IDENTITY_INSERT [dbo].[Subjects] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (1, N'Bree', 980.5700, N'Cockroft')
INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (2, N'Olympe', 434.3600, N'Fritchly')
INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (3, N'Rem', 689.2400, N'Brignell')
INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (4, N'Sonnie', 664.5700, N'Colpus')
INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (5, N'Zacharie', 740.2100, N'Massenhove')
INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (6, N'Nicky', 469.3600, N'Chapman')
INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (7, N'Shelba', 927.2100, N'Prinne')
INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (8, N'Corabella', 903.2200, N'Shegog')
INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (9, N'Janis', 864.6400, N'Heddan')
INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (10, N'Meredeth', 764.3700, N'Rove')
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Departme__737584F6074AB74C]    Script Date: 12.08.2024 16:13:43 ******/
ALTER TABLE [dbo].[Departments] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Facultie__737584F6F4505BA5]    Script Date: 12.08.2024 16:13:43 ******/
ALTER TABLE [dbo].[Faculties] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Groups__737584F6D56F6E7D]    Script Date: 12.08.2024 16:13:43 ******/
ALTER TABLE [dbo].[Groups] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Subjects__737584F603AF704E]    Script Date: 12.08.2024 16:13:43 ******/
ALTER TABLE [dbo].[Subjects] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Departments] ADD  DEFAULT ((0.0)) FOR [Financing]
GO
ALTER TABLE [dbo].[Faculties] ADD  DEFAULT ((0.0)) FOR [Financing]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculties] ([Id])
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[GroupsCurators]  WITH CHECK ADD FOREIGN KEY([CuratorId])
REFERENCES [dbo].[Curators] ([Id])
GO
ALTER TABLE [dbo].[GroupsCurators]  WITH CHECK ADD FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[GroupsLectures]  WITH CHECK ADD FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[GroupsLectures]  WITH CHECK ADD FOREIGN KEY([LectureId])
REFERENCES [dbo].[Lectures] ([Id])
GO
ALTER TABLE [dbo].[Lectures]  WITH CHECK ADD FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[Lectures]  WITH CHECK ADD FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([Id])
GO
ALTER TABLE [dbo].[Curators]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Curators]  WITH CHECK ADD CHECK  (([Surname]<>N''))
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD CHECK  (([Financing]>=(0.0)))
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Faculties]  WITH CHECK ADD CHECK  (([Financing]>=(0.0)))
GO
ALTER TABLE [dbo].[Faculties]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD CHECK  (([Year]>=(1) AND [Year]<=(5)))
GO
ALTER TABLE [dbo].[Lectures]  WITH CHECK ADD CHECK  (([LectureRoom]<>N''))
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([Salary]>(0.0)))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([Surname]<>N''))
GO
