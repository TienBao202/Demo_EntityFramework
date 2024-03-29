USE [CodeFirstDemo]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 12/16/2019 2:24:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 12/16/2019 2:24:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[BirthDay] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Employees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201912160258339_InitialDB', N'Demo_CodeFirst.Migrations.Configuration', 0x1F8B0800000000000400CD58DB6EE336107D2FD07F10F4D4025933979736907791D84961749D04ABECBE2E68696C13A54895A402FBDBF6A19FD45FE8507751B1A3C4EB451120B0469C331792678EFDEFB77F820F9B847B4FA0349362EC9F8D4E7D0F4424632656633F33CB77BFF91FDEFFFC537013271BEF4BB5EEC2AE434FA1C7FEDA98F492101DAD21A17A94B048492D976614C984D05892F3D3D3DFC9D9190184F011CBF3824F99302C81FC011F275244909A8CF2B98C81EBD28E6FC21CD5BBA309E8944630F6A790C8AF135C76CB9436A3C2C1F7AE38A3984C087CE97B540869A8C1542F3F6B088D926215A668A0FC719B02AE5B52AEA12CE1B2593EB49AD3735B0D691C2BA828D34626AF043CBB28DB435CF73735D9AFDB870DBCC1469BADAD3A6FE2D8BF49522EB780C5BBC12E275CD9853B7A3CAA3C4FBCEEFB93FA5CE0F1B17F27DE24E326533016901945F989F7902D388BFE84EDA3FC0BC458649CB7D3C444F15DC780A60725535066FB099665F2B3A9EF91AE1F711D6BB7964F51D64C988B73DFBBC3E074C1A13E05AD1684462AF80304286A207EA0C680C24D9CC590F7B117DD89657B5245C3638797C8F7E674F311C4CAACC73E7EF4BD5BB681B8B294197C160CEF1C3A1995C14B41ECFFA307B966CAACA7747BF440D8EC18D4D1C35CC5B102AD8F1EE7612DC5F177E726A18C7FE7280169B8A2CF2048D18632BC17AD939EDFFEE9B57D051BF30CA120F9969CA2CB88DDAA0AE8108CC34DB84D4D2E05A98F1ADE7A2EE93ABD6674906276543386EC1832C19CA629F6AF35744A8B17161367F22E7C3D0F27050689F433745C675B4742DAA12B70DEB6BB4C0D5D50BB839338D9B3ACDE8C1D8DAE02BAFD76A9B7697FE5613F175EFBA7830BD5F4F3164B4C9047F36AA14EA935927AAEB902A09CAA67387D227996885D73619F77C1D26DFFC2321CA1A0E0364261198ED0F06B1BA5B10E47AA08B48D53D986A3D4FCD886A98DC3714AFE6BA394A6E11825BBB5314A531F2320CEE9724F32E91D65473FB877631FBBB84BEAE835CB386C129437FB655DDBBBEAC512DFC3E63CB1D85EF370AB0D2423BB6014FECD279C61BDCD8239156C09DA1412CB475D79EEE8E2FF8F46255AC77CA050FDE13A91D9AEBEA8047B3272B834144F54456BAA7E49E8E6D736D26BE5DF4140AEC43B08AC2BE30E8272A4DA41581D397610524772BD02E9ADB2AA1AF8C314D35EC15430C9D88F17120B28126D49AD37EAA93EB305A4FDBD3E988266AB06C27ECB171059CA6840AB3533B19455C3B1BA7646D512673FE660688C4DBA52862D6964F07584A72657C25F28CFF21A1710CFC47D66D2CC5C690DC98277466B40F6C7CF456337E7E03EB54FFA7B948069322C01EEC575C6785CE77DDBE7935D10F6BC94248559E13701845B6D6BA4BBDEE4DD0554B66F0AA9BDC8C23C021E1004D3F722A44FF096DC50FD7F84158DB6D580DA0DF2F24674DB1E4C195D299AE812A3F1B7BF5511FB63D5FBFF00A51B36AEDE120000, N'6.2.0-61023')
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([ID], [Code], [Name], [BirthDay], [Gender], [Address], [Phone], [Email]) VALUES (1, N'MS001', N'Đinh Hoàng Anh', N'12/10/1997', N'Nam', N'Hà Nội', N'0321100226', N'hoanganh@gmail.com')
INSERT [dbo].[Employees] ([ID], [Code], [Name], [BirthDay], [Gender], [Address], [Phone], [Email]) VALUES (2, N'MS002', N'Kiều Việt Anh', N'12/10/1997', N'Nam', N'Hà Nội', N'03291914254', N'vietanh@gmail.com')
INSERT [dbo].[Employees] ([ID], [Code], [Name], [BirthDay], [Gender], [Address], [Phone], [Email]) VALUES (9, N'MS003', N'Đỗ Duy Anh', N'11/10/1997', N'Nam', N'Hà Nội', N'00130266', N'duyanh@gmail.com')
INSERT [dbo].[Employees] ([ID], [Code], [Name], [BirthDay], [Gender], [Address], [Phone], [Email]) VALUES (10, N'MS004', N'Vũ Xuân Đại', N'03/05/1997', N'Nam', N'Nam Định', N'03211100', N'daidau@gmail.com')
SET IDENTITY_INSERT [dbo].[Employees] OFF
