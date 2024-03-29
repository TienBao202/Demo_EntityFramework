USE [DatabaseFirstDemo]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/16/2019 2:24:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[BirthDay] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [Code], [Name], [BirthDay], [Gender], [Address], [Phone], [Email]) VALUES (1, N'MS01', N'Phạm Thị Mai Phương', N'10/02/1997', N'Nữ', N'Hà Nội', N'032165984', N'maiphuong@gmail.com')
INSERT [dbo].[Employee] ([ID], [Code], [Name], [BirthDay], [Gender], [Address], [Phone], [Email]) VALUES (2, N'MS02', N'Đinh Hoàng Anh', N'12/12/1997', N'Nam', N'Hải Phòng', N'03261549', N'hoanganhdinh@gmail.com')
INSERT [dbo].[Employee] ([ID], [Code], [Name], [BirthDay], [Gender], [Address], [Phone], [Email]) VALUES (4, N'MS03', N'Đỗ Lai Thức', N'22/05/1998', N'Nam', N'Hồ Chí Minh', N'03269874', N'dolaithuc@gmail.com')
SET IDENTITY_INSERT [dbo].[Employee] OFF
