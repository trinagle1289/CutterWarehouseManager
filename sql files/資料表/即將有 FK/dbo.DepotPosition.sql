CREATE TABLE [dbo].[DepotPosition] (
    [PositionId]    UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [PositionCode]  NVARCHAR (128)   NOT NULL,
    [ToolDepotCode] NVARCHAR (50)    NOT NULL,
    [PositionX]     INT              NOT NULL,
    [PositionY]     INT              NOT NULL,
    PRIMARY KEY CLUSTERED ([PositionId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀具儲位', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DepotPosition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'儲位編號Id', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DepotPosition', @level2type = N'COLUMN', @level2name = N'PositionId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'儲位編號(QRCODE)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DepotPosition', @level2type = N'COLUMN', @level2name = N'PositionCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀倉編號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DepotPosition', @level2type = N'COLUMN', @level2name = N'ToolDepotCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'儲位位置X', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DepotPosition', @level2type = N'COLUMN', @level2name = N'PositionX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'儲位位置Y', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DepotPosition', @level2type = N'COLUMN', @level2name = N'PositionY';

