CREATE TABLE [dbo].[BoxTypes] (
    [BoxTypeId]   INT           IDENTITY (1, 1) NOT NULL,
    [BoxType]     NVARCHAR (5)  NOT NULL,
    [BoxTypeDesc] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([BoxTypeId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀盒類型', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoxTypes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'盒子類型Id', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoxTypes', @level2type = N'COLUMN', @level2name = N'BoxTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'盒子類型代碼', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoxTypes', @level2type = N'COLUMN', @level2name = N'BoxType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'盒子類型描述(圓形、方形...)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoxTypes', @level2type = N'COLUMN', @level2name = N'BoxTypeDesc';

