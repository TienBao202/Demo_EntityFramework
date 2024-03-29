USE [ModelFirstDemo]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 12/16/2019 2:25:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[BirthDay] [nvarchar](max) NOT NULL,
	[Gender] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([ID], [Code], [Name], [BirthDay], [Gender], [Address], [Phone], [Email]) VALUES (1, N'MS01', N'Nguyễn Kiều Thành Công', N'12/05/1997', N'Nam', N'Hà Nội', N'0326594', N'nguyenkieuthanhcong@gmail.com')
INSERT [dbo].[Employees] ([ID], [Code], [Name], [BirthDay], [Gender], [Address], [Phone], [Email]) VALUES (2, N'MS02', N'Phùng Hà Minh Châu', N'15/03/1997', N'Nữ', N'Hồ Chí Minh', N'03265541', N'phunghaminhchau@gmail.com')
SET IDENTITY_INSERT [dbo].[Employees] OFF
