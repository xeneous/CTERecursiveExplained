USE [ YOUR DATABASE ]
GO
/****** Object:  Table [dbo].[Organization_Chart]    Script Date: 03/08/2022 12:32:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Drop table if exists [dbo].[Organization_Chart]

CREATE TABLE [dbo].[Organization_Chart] (
	[id] [int] IDENTITY(0,1) NOT NULL,
	[position] [varchar](50) NULL,
	[fullname] [varchar](50) NULL,
	[id_superior] [int] NULL,
	[staff] [int] NULL,
	[nivel] [int] NULL
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[Organization_Chart] ON 

INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (0, N'Marketing Director', N'Thomas Edison', NULL, NULL, NULL)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (1, N'Manager', N'Marie Curie', 0, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel])
VALUES (2, N'Manager', N'Blaise Pascal', 0, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (3, N'Manager', N'Isaac Newton', 0, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (4, N'Manager', N'Will Thomson', 1, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (5, N'Manager', N'Carl Gauss', 1, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (6, N'Manager', N'James Watt', 2, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (7, N'Manager', N'Maxwell Clerck', 3, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (8, N'Manager', N'Paul Dirac', 3, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (9, N'Employee', N'WT 1', 4, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (10, N'Employee', N'WT 2', 4, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel])
VALUES (11, N'Employee', N'WT 3', 4, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (12, N'Employee', N'CG1', 5, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (13, N'Employee', N'CG2', 5, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (14, N'Employee', N'CG3', 5, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (15, N'Employee', N'JW1', 6, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (16, N'Employee', N'JW2', 6, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (17, N'Employee', N'MC1', 7, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (18, N'Employee', N'MC2', 7, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (19, N'Employee', N'MC3', 7, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel])
VALUES (20, N'Employee', N'PD1', 8, 0, 0)
INSERT [dbo].[Organization_Chart] ([id], [position], [fullname], [id_superior], [staff], [nivel]) 
VALUES (21, N'Employee', N'PD2', 8, 0, 0)
SET IDENTITY_INSERT [dbo].[Organization_Chart] OFF
GO
