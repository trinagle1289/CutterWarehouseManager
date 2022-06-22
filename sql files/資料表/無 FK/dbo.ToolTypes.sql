CREATE TABLE [dbo].[ToolTypes] (
    [ToolTypeId]   INT           IDENTITY (1, 1) NOT NULL,
    [ToolType]     NVARCHAR (50) NOT NULL,
    [ToolTypeName] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([ToolTypeId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀具種類', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolTypes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀具類型', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolTypes', @level2type = N'COLUMN', @level2name = N'ToolTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'類型代號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolTypes', @level2type = N'COLUMN', @level2name = N'ToolType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'類型名稱(銑刀、車刀..etc)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolTypes', @level2type = N'COLUMN', @level2name = N'ToolTypeName';

