CREATE TABLE [dbo].[Tools] (
    [ToolId]         UNIQUEIDENTIFIER NOT NULL DEFAULT newid(),
    [ToolCode]       NVARCHAR (128)   NOT NULL,
    [BladeLength]    FLOAT (53)       NOT NULL DEFAULT -1,
    [BladeDiameter]  FLOAT (53)       NOT NULL DEFAULT -1,
    [ToolRangle]     FLOAT (53)       NOT NULL DEFAULT -1,
    [ToolLength]     FLOAT (53)       NOT NULL,
    [HolderDiameter] FLOAT (53)       NOT NULL,
    [ToolTypeId]     INT              NOT NULL,
    [MaterialTypeId] INT              NOT NULL,
    [BladeCount]     INT              NOT NULL DEFAULT -1,
    [BeReturnd]      BIT              NOT NULL DEFAULT 0,
    [ReturnDays]     INT              NOT NULL DEFAULT 0,
    [UpdateUserId]   NVARCHAR (128)   NOT NULL,
    [UpdateTime]     DATETIME         NOT NULL,
    [CreateTime]     DATETIME         NOT NULL,
    PRIMARY KEY CLUSTERED ([ToolId] ASC), 
    CONSTRAINT [FK_ToolTypeId] FOREIGN KEY ([ToolTypeId]) REFERENCES [ToolTypes]([ToolTypeId]), 
    CONSTRAINT [FK_MaterialTypeId] FOREIGN KEY ([MaterialTypeId]) REFERENCES [ToolMaterials]([MaterialId])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀具Id', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tools', @level2type = N'COLUMN', @level2name = N'ToolId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀具型式編號(客戶編碼規則)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tools', @level2type = N'COLUMN', @level2name = N'ToolCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀刃長度(mm)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tools', @level2type = N'COLUMN', @level2name = N'BladeLength';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀刃直徑(mm)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tools', @level2type = N'COLUMN', @level2name = N'BladeDiameter';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀具R角(mm)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tools', @level2type = N'COLUMN', @level2name = N'ToolRangle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀具長度(mm)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tools', @level2type = N'COLUMN', @level2name = N'ToolLength';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀具柄直徑(mm)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tools', @level2type = N'COLUMN', @level2name = N'HolderDiameter';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀具類型Id', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tools', @level2type = N'COLUMN', @level2name = N'ToolTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'材質類型Id', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tools', @level2type = N'COLUMN', @level2name = N'MaterialTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'刀具刃數', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tools', @level2type = N'COLUMN', @level2name = N'BladeCount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'是否歸還', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tools', @level2type = N'COLUMN', @level2name = N'BeReturnd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'每次可借出的天數', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tools', @level2type = N'COLUMN', @level2name = N'ReturnDays';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'更新使用者帳號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tools', @level2type = N'COLUMN', @level2name = N'UpdateUserId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'更新時間', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tools', @level2type = N'COLUMN', @level2name = N'UpdateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'建立資料時間', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tools', @level2type = N'COLUMN', @level2name = N'CreateTime';


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'刀具(型式)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Tools',
    @level2type = NULL,
    @level2name = NULL