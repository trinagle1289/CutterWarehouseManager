CREATE TABLE [dbo].[ToolBox] (
    [ToolBoxId]          UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [ToolDepotId]        UNIQUEIDENTIFIER NOT NULL,
    [BoxPositionId]      UNIQUEIDENTIFIER NOT NULL,
    [ToolId]             UNIQUEIDENTIFIER NULL,
    [BoxTypeId]          INT              NOT NULL,
    [BoxCode]            NVARCHAR (128)   NOT NULL,
    [BoxName]            NVARCHAR (50)    NOT NULL,
    [BoxLength]          FLOAT (53)       NOT NULL,
    [BoxWidth]           FLOAT (53)       NOT NULL,
    [BoxHeight]          FLOAT (53)       NOT NULL,
    [ExpectedReturnDate] DATETIME         NOT NULL,
    [ActuralReturnDate]  DATETIME         NOT NULL,
    [BoxStatusId]        INT              DEFAULT ((2)) NOT NULL,
    [TotalCounts]        INT              DEFAULT ((0)) NOT NULL,
    [TotalTime]          INT              NOT NULL,
    [UpdateUserId]       NVARCHAR (128)   NOT NULL,
    [UpdateTime]         DATETIME         NOT NULL,
    [CreateTime]         DATETIME         NOT NULL,
    CONSTRAINT [PK_ToolBox] PRIMARY KEY CLUSTERED ([ToolBoxId] ASC),
    CONSTRAINT [FK_ToolDepotId] FOREIGN KEY ([ToolDepotId]) REFERENCES [dbo].[ToolDepots] ([ToolDepotId]),
    CONSTRAINT [FK_BoxPositionId] FOREIGN KEY ([BoxPositionId]) REFERENCES [dbo].[DepotPosition] ([PositionId]),
    CONSTRAINT [FK_ToolId] FOREIGN KEY ([ToolId]) REFERENCES [dbo].[Tools] ([ToolId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀具盒子表Id', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'ToolBoxId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀倉Id', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'ToolDepotId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'儲位編號Id', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'BoxPositionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀具Id', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'ToolId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀盒類型Id', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'BoxTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀盒編號(QRCODE)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'BoxCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀盒名稱', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'BoxName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀盒長度(mm)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'BoxLength';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀盒寬度(mm)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'BoxWidth';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀盒高度(mm)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'BoxHeight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'應歸還日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'ExpectedReturnDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'實際應歸還日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'ActuralReturnDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀盒狀態Id', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'BoxStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'累計借出次數', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'TotalCounts';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'累計借出時間', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'TotalTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'更新的使用者', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'UpdateUserId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'更新資料時間', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'UpdateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'新增資料時間', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolBox', @level2type = N'COLUMN', @level2name = N'CreateTime';

