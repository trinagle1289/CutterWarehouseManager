CREATE TABLE [dbo].[BoxStatus] (
    [BoxStatusId]   INT           IDENTITY (1, 1) NOT NULL,
    [BoxStatus]     NVARCHAR (10) NOT NULL,
    [BoxStatusDesc] NVARCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([BoxStatusId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀盒狀態', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoxStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀盒狀態Id', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoxStatus', @level2type = N'COLUMN', @level2name = N'BoxStatusId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀盒狀態(1.有刀 2.空盒)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoxStatus', @level2type = N'COLUMN', @level2name = N'BoxStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀盒狀態描述', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoxStatus', @level2type = N'COLUMN', @level2name = N'BoxStatusDesc';

