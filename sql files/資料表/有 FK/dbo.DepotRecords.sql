CREATE TABLE [dbo].[DepotRecords]
(
	[StockRecordId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [StockRecordNo] NVARCHAR(50) NOT NULL, 
    [ToolBoxId] UNIQUEIDENTIFIER NOT NULL, 
    [WorkOrderNo] NVARCHAR(50) NOT NULL, 
    [RecordTypeId] INT NOT NULL, 
    [RecordUserId] NVARCHAR(128) NOT NULL, 
    [RecordTime] DATETIME NOT NULL, 
    CONSTRAINT [FK_ToolBoxId] FOREIGN KEY ([ToolBoxId]) REFERENCES [ToolBox]([ToolBoxId]), 
    CONSTRAINT [FK_RecordTypeId] FOREIGN KEY ([RecordTypeId]) REFERENCES [RecordTypes]([RecordTypeId])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'倉庫領用紀錄',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DepotRecords',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'倉庫紀錄Id',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DepotRecords',
    @level2type = N'COLUMN',
    @level2name = N'StockRecordId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'倉庫紀錄編號',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DepotRecords',
    @level2type = N'COLUMN',
    @level2name = N'StockRecordNo'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'刀具盒子Id',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DepotRecords',
    @level2type = N'COLUMN',
    @level2name = N'ToolBoxId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'領用工單號',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DepotRecords',
    @level2type = N'COLUMN',
    @level2name = N'WorkOrderNo'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'倉庫紀錄類型Id(1:領出/借出(OUT) 2:歸還/入庫(IN))',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DepotRecords',
    @level2type = N'COLUMN',
    @level2name = N'RecordTypeId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'紀錄的帳號',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DepotRecords',
    @level2type = N'COLUMN',
    @level2name = N'RecordUserId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'紀錄時間',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DepotRecords',
    @level2type = N'COLUMN',
    @level2name = N'RecordTime'