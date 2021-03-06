USE [TOOLDEPOT.MDF]
GO
/****** Object:  Table [dbo].[BoxStatus]    Script Date: 2022/6/24 下午 03:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoxStatus](
	[BoxStatusId] [int] IDENTITY(1,1) NOT NULL,
	[BoxStatus] [nvarchar](2) NOT NULL,
	[BoxStatusDesc] [nvarchar](10) NULL,
 CONSTRAINT [PK__BoxStatu__4B154C1930FF14B1] PRIMARY KEY CLUSTERED 
(
	[BoxStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoxTypes]    Script Date: 2022/6/24 下午 03:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoxTypes](
	[BoxTypeId] [int] IDENTITY(1,1) NOT NULL,
	[BoxType] [nvarchar](2) NOT NULL,
	[BoxTypeDesc] [nvarchar](20) NULL,
 CONSTRAINT [PK__BoxTypes__5D88923058A7012A] PRIMARY KEY CLUSTERED 
(
	[BoxTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepotPositions]    Script Date: 2022/6/24 下午 03:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepotPositions](
	[PositionId] [nvarchar](5) NOT NULL,
	[PositionCode] [nvarchar](5) NOT NULL,
	[ToolDepotCode] [nvarchar](5) NOT NULL,
	[PositionX] [int] NOT NULL,
	[PositionY] [int] NOT NULL,
 CONSTRAINT [PK__DepotPos__60BB9A7908D2AD15] PRIMARY KEY CLUSTERED 
(
	[PositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepotRecords]    Script Date: 2022/6/24 下午 03:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepotRecords](
	[RecordId] [uniqueidentifier] NOT NULL,
	[RecordNo] [nvarchar](20) NOT NULL,
	[ToolBoxCode] [nvarchar](128) NOT NULL,
	[WorkOrderNo] [nvarchar](50) NOT NULL,
	[RecordType] [nvarchar](2) NOT NULL,
	[RecordUser] [nvarchar](20) NOT NULL,
	[RecordTime] [datetime] NOT NULL,
 CONSTRAINT [PK__DepotRec__D607F60773FA254B] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecordTypes]    Script Date: 2022/6/24 下午 03:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordTypes](
	[RecordTypeId] [nvarchar](2) NOT NULL,
	[RecordType] [nvarchar](2) NOT NULL,
	[RecordTypeContent] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__RecordTy__451D56D5DB5DA908] PRIMARY KEY CLUSTERED 
(
	[RecordTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToolBox]    Script Date: 2022/6/24 下午 03:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToolBox](
	[ToolBoxId] [nvarchar](128) NOT NULL,
	[ToolDepotCode] [nvarchar](5) NULL,
	[PositionCode] [nvarchar](5) NULL,
	[ToolCode] [nvarchar](128) NULL,
	[BoxType] [nvarchar](2) NOT NULL,
	[BoxCode] [nvarchar](128) NOT NULL,
	[BoxName] [nvarchar](50) NOT NULL,
	[BoxLength] [float] NOT NULL,
	[BoxWidth] [float] NOT NULL,
	[BoxHeight] [float] NOT NULL,
	[ExpectedReturnDate] [datetime] NULL,
	[ActuralReturnDate] [datetime] NULL,
	[BoxStatus] [nvarchar](2) NOT NULL,
	[TotalCounts] [int] NULL,
	[TotalTime] [int] NULL,
	[UpdateUser] [nvarchar](20) NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_ToolBox] PRIMARY KEY CLUSTERED 
(
	[ToolBoxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToolDepots]    Script Date: 2022/6/24 下午 03:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToolDepots](
	[ToolDepotId] [nvarchar](5) NOT NULL,
	[ToolDepotCode] [nvarchar](5) NOT NULL,
	[Description] [nvarchar](20) NULL,
 CONSTRAINT [PK__ToolDepo__9A88F22F8AD4278F] PRIMARY KEY CLUSTERED 
(
	[ToolDepotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToolMaterials]    Script Date: 2022/6/24 下午 03:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToolMaterials](
	[MaterialId] [int] IDENTITY(1,1) NOT NULL,
	[MaterialCode] [nvarchar](5) NOT NULL,
	[MaterialName] [nvarchar](50) NOT NULL,
	[MaterialDesc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__ToolMate__C50610F7F73AA074] PRIMARY KEY CLUSTERED 
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tools]    Script Date: 2022/6/24 下午 03:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tools](
	[ToolId] [nvarchar](128) NOT NULL,
	[ToolCode] [nvarchar](128) NOT NULL,
	[BladeLength] [float] NOT NULL,
	[BladeDiameter] [float] NOT NULL,
	[ToolRangle] [float] NOT NULL,
	[ToolLength] [float] NOT NULL,
	[HolderDiameter] [float] NOT NULL,
	[ToolTypeId] [int] NOT NULL,
	[MaterialTypeId] [int] NOT NULL,
	[BladeCount] [int] NOT NULL,
	[BeReturnd] [bit] NOT NULL,
	[ReturnDays] [int] NOT NULL,
	[UpdateUserId] [nvarchar](128) NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK__Tools__CC0CEB919F8B1EC5] PRIMARY KEY CLUSTERED 
(
	[ToolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToolTypes]    Script Date: 2022/6/24 下午 03:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToolTypes](
	[ToolTypeId] [nvarchar](5) NOT NULL,
	[ToolType] [nvarchar](5) NOT NULL,
	[ToolTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__ToolType__56E90AA95A02C3C8] PRIMARY KEY CLUSTERED 
(
	[ToolTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2022/6/24 下午 03:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [uniqueidentifier] NOT NULL,
	[UserGroupId] [int] NOT NULL,
	[EmployeeNo] [nvarchar](50) NOT NULL,
	[UserAccount] [nvarchar](128) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[NickName] [nvarchar](50) NOT NULL,
	[Valid] [bit] NOT NULL,
	[UpdateTime] [datetime] NULL,
	[CreateTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DepotPositions] ADD  CONSTRAINT [DF__DepotPosi__Posit__6166761E]  DEFAULT (newid()) FOR [PositionId]
GO
ALTER TABLE [dbo].[ToolBox] ADD  CONSTRAINT [DF__ToolBox__ToolBox__719CDDE7]  DEFAULT (newid()) FOR [ToolBoxId]
GO
ALTER TABLE [dbo].[ToolBox] ADD  CONSTRAINT [DF__ToolBox__BoxStat__72910220]  DEFAULT ((2)) FOR [BoxStatus]
GO
ALTER TABLE [dbo].[ToolBox] ADD  CONSTRAINT [DF__ToolBox__TotalCo__73852659]  DEFAULT ((0)) FOR [TotalCounts]
GO
ALTER TABLE [dbo].[Tools] ADD  CONSTRAINT [DF__Tools__ToolId__6442E2C9]  DEFAULT (newid()) FOR [ToolId]
GO
ALTER TABLE [dbo].[Tools] ADD  CONSTRAINT [DF__Tools__BladeLeng__65370702]  DEFAULT ((-1)) FOR [BladeLength]
GO
ALTER TABLE [dbo].[Tools] ADD  CONSTRAINT [DF__Tools__BladeDiam__662B2B3B]  DEFAULT ((-1)) FOR [BladeDiameter]
GO
ALTER TABLE [dbo].[Tools] ADD  CONSTRAINT [DF__Tools__ToolRangl__671F4F74]  DEFAULT ((-1)) FOR [ToolRangle]
GO
ALTER TABLE [dbo].[Tools] ADD  CONSTRAINT [DF__Tools__BladeCoun__681373AD]  DEFAULT ((-1)) FOR [BladeCount]
GO
ALTER TABLE [dbo].[Tools] ADD  CONSTRAINT [DF__Tools__BeReturnd__690797E6]  DEFAULT ((0)) FOR [BeReturnd]
GO
ALTER TABLE [dbo].[Tools] ADD  CONSTRAINT [DF__Tools__ReturnDay__69FBBC1F]  DEFAULT ((0)) FOR [ReturnDays]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'尚未設定') FOR [EmployeeNo]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'尚未設定') FOR [LastName]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'尚未設定') FOR [FirstName]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'無') FOR [NickName]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Valid]
GO
ALTER TABLE [dbo].[DepotRecords]  WITH CHECK ADD  CONSTRAINT [FK_RecordTypeId] FOREIGN KEY([RecordType])
REFERENCES [dbo].[RecordTypes] ([RecordTypeId])
GO
ALTER TABLE [dbo].[DepotRecords] CHECK CONSTRAINT [FK_RecordTypeId]
GO
ALTER TABLE [dbo].[DepotRecords]  WITH CHECK ADD  CONSTRAINT [FK_ToolBoxId] FOREIGN KEY([ToolBoxCode])
REFERENCES [dbo].[ToolBox] ([ToolBoxId])
GO
ALTER TABLE [dbo].[DepotRecords] CHECK CONSTRAINT [FK_ToolBoxId]
GO
ALTER TABLE [dbo].[ToolBox]  WITH CHECK ADD  CONSTRAINT [FK_ToolId] FOREIGN KEY([ToolCode])
REFERENCES [dbo].[Tools] ([ToolId])
GO
ALTER TABLE [dbo].[ToolBox] CHECK CONSTRAINT [FK_ToolId]
GO
ALTER TABLE [dbo].[Tools]  WITH CHECK ADD  CONSTRAINT [FK_MaterialTypeId] FOREIGN KEY([MaterialTypeId])
REFERENCES [dbo].[ToolMaterials] ([MaterialId])
GO
ALTER TABLE [dbo].[Tools] CHECK CONSTRAINT [FK_MaterialTypeId]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀盒狀態Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BoxStatus', @level2type=N'COLUMN',@level2name=N'BoxStatusId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀盒狀態(01.有刀 02.空盒)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BoxStatus', @level2type=N'COLUMN',@level2name=N'BoxStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀盒狀態描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BoxStatus', @level2type=N'COLUMN',@level2name=N'BoxStatusDesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀盒狀態' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BoxStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盒子類型Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BoxTypes', @level2type=N'COLUMN',@level2name=N'BoxTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盒子類型代碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BoxTypes', @level2type=N'COLUMN',@level2name=N'BoxType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盒子類型描述(圓形、方形...)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BoxTypes', @level2type=N'COLUMN',@level2name=N'BoxTypeDesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀盒類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BoxTypes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'儲位編號Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DepotPositions', @level2type=N'COLUMN',@level2name=N'PositionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'儲位編號(QRCODE)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DepotPositions', @level2type=N'COLUMN',@level2name=N'PositionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀倉編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DepotPositions', @level2type=N'COLUMN',@level2name=N'ToolDepotCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'儲位位置X' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DepotPositions', @level2type=N'COLUMN',@level2name=N'PositionX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'儲位位置Y' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DepotPositions', @level2type=N'COLUMN',@level2name=N'PositionY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀具儲位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DepotPositions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'倉庫紀錄Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DepotRecords', @level2type=N'COLUMN',@level2name=N'RecordId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'倉庫紀錄編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DepotRecords', @level2type=N'COLUMN',@level2name=N'RecordNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀具盒子Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DepotRecords', @level2type=N'COLUMN',@level2name=N'ToolBoxCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'領用工單號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DepotRecords', @level2type=N'COLUMN',@level2name=N'WorkOrderNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'倉庫紀錄類型Id(1:領出/借出(OUT) 2:歸還/入庫(IN))' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DepotRecords', @level2type=N'COLUMN',@level2name=N'RecordType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'紀錄的帳號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DepotRecords', @level2type=N'COLUMN',@level2name=N'RecordUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'紀錄時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DepotRecords', @level2type=N'COLUMN',@level2name=N'RecordTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'倉庫領用紀錄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DepotRecords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'倉庫紀錄類型Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordTypes', @level2type=N'COLUMN',@level2name=N'RecordTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'倉庫紀錄類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordTypes', @level2type=N'COLUMN',@level2name=N'RecordType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'倉庫紀錄類型Id(1:領出/借出(OUT) 2:歸還/入庫(IN))' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordTypes', @level2type=N'COLUMN',@level2name=N'RecordTypeContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'倉庫紀錄類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordTypes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀具盒子表Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'ToolBoxId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀倉Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'ToolDepotCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'儲位編號Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'PositionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀具Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'ToolCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀盒類型Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'BoxType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀盒編號(QRCODE)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'BoxCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀盒名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'BoxName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀盒長度(mm)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'BoxLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀盒寬度(mm)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'BoxWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀盒高度(mm)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'BoxHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'應歸還日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'ExpectedReturnDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'實際應歸還日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'ActuralReturnDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀盒狀態Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'BoxStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'累計借出次數' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'TotalCounts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'累計借出時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'TotalTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新的使用者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'UpdateUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新資料時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新增資料時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolBox', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀倉Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolDepots', @level2type=N'COLUMN',@level2name=N'ToolDepotId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀倉編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolDepots', @level2type=N'COLUMN',@level2name=N'ToolDepotCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀倉描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolDepots', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀倉' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolDepots'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'材質Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolMaterials', @level2type=N'COLUMN',@level2name=N'MaterialId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'材質代號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolMaterials', @level2type=N'COLUMN',@level2name=N'MaterialCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'材質名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolMaterials', @level2type=N'COLUMN',@level2name=N'MaterialName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'材質描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolMaterials', @level2type=N'COLUMN',@level2name=N'MaterialDesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀具材質' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀具Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tools', @level2type=N'COLUMN',@level2name=N'ToolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀具型式編號(客戶編碼規則)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tools', @level2type=N'COLUMN',@level2name=N'ToolCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀刃長度(mm)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tools', @level2type=N'COLUMN',@level2name=N'BladeLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀刃直徑(mm)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tools', @level2type=N'COLUMN',@level2name=N'BladeDiameter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀具R角(mm)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tools', @level2type=N'COLUMN',@level2name=N'ToolRangle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀具長度(mm)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tools', @level2type=N'COLUMN',@level2name=N'ToolLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀具柄直徑(mm)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tools', @level2type=N'COLUMN',@level2name=N'HolderDiameter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀具類型Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tools', @level2type=N'COLUMN',@level2name=N'ToolTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'材質類型Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tools', @level2type=N'COLUMN',@level2name=N'MaterialTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀具刃數' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tools', @level2type=N'COLUMN',@level2name=N'BladeCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否歸還' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tools', @level2type=N'COLUMN',@level2name=N'BeReturnd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每次可借出的天數' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tools', @level2type=N'COLUMN',@level2name=N'ReturnDays'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新使用者帳號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tools', @level2type=N'COLUMN',@level2name=N'UpdateUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tools', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立資料時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tools', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀具(型式)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tools'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀具類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolTypes', @level2type=N'COLUMN',@level2name=N'ToolTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'類型代號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolTypes', @level2type=N'COLUMN',@level2name=N'ToolType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'類型名稱(銑刀、車刀..etc)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolTypes', @level2type=N'COLUMN',@level2name=N'ToolTypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刀具種類' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToolTypes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用者帳號識別項' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:最高管理者; 1:管理者;  2:一般使用者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'UserGroupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'EmployeeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帳號識別項' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'UserAccount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帳號名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'暱稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'NickName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效(帳號)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Valid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
