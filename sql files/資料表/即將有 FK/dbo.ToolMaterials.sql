CREATE TABLE [dbo].[ToolMaterials] (
    [MaterialId]   INT           IDENTITY (1, 1) NOT NULL,
    [MaterialCode] NVARCHAR (50) NOT NULL,
    [MaterialName] NVARCHAR (50) NOT NULL,
    [MaterialDesc] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([MaterialId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀具材質', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolMaterials';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'材質Id', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolMaterials', @level2type = N'COLUMN', @level2name = N'MaterialId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'材質代號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolMaterials', @level2type = N'COLUMN', @level2name = N'MaterialCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'材質名稱', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolMaterials', @level2type = N'COLUMN', @level2name = N'MaterialName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'材質描述', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolMaterials', @level2type = N'COLUMN', @level2name = N'MaterialDesc';

