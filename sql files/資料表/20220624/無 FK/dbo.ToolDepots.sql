CREATE TABLE [dbo].[ToolDepots] (
    [ToolDepotId]   UNIQUEIDENTIFIER NOT NULL,
    [ToolDepotCode] NVARCHAR (5)    NOT NULL,
    [Description]   NVARCHAR (20)  NOT NULL,
    PRIMARY KEY CLUSTERED ([ToolDepotId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀倉', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolDepots';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀倉Id', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolDepots', @level2type = N'COLUMN', @level2name = N'ToolDepotId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀倉編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolDepots', @level2type = N'COLUMN', @level2name = N'ToolDepotCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀倉描述', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ToolDepots', @level2type = N'COLUMN', @level2name = N'Description';

