CREATE TABLE [dbo].[RecordTypes] (
    [RecordTypeId]      INT           IDENTITY (1, 1) NOT NULL,
    [RecordType]        NVARCHAR (50) NOT NULL,
    [RecordTypeContent] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([RecordTypeId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'倉庫紀錄類型Id', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordTypes', @level2type = N'COLUMN', @level2name = N'RecordTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'倉庫紀錄類型', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordTypes', @level2type = N'COLUMN', @level2name = N'RecordType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'倉庫紀錄類型Id(1:領出/借出(OUT) 2:歸還/入庫(IN))', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RecordTypes', @level2type = N'COLUMN', @level2name = N'RecordTypeContent';


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'倉庫紀錄類型',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'RecordTypes',
    @level2type = NULL,
    @level2name = NULL