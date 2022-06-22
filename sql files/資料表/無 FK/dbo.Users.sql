CREATE TABLE [dbo].[Users] (
    [UserId]      UNIQUEIDENTIFIER NOT NULL,
    [UserGroupId] INT              NOT NULL,
    [EmployeeNo]  NVARCHAR (50)    DEFAULT (N'尚未設定') NOT NULL,
    [UserAccount] NVARCHAR (128)   NOT NULL,
    [UserName]    NVARCHAR (50)    NOT NULL,
    [LastName]    NVARCHAR (50)    DEFAULT (N'尚未設定') NOT NULL,
    [FirstName]   NVARCHAR (50)    DEFAULT (N'尚未設定') NOT NULL,
    [NickName]    NVARCHAR (50)    DEFAULT (N'無') NOT NULL,
    [Valid]       BIT              DEFAULT ((0)) NOT NULL,
    [UpdateTime]  DATETIME         NULL,
    [CreateTime]  DATETIME         NOT NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'使用者帳號識別項', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Users', @level2type = N'COLUMN', @level2name = N'UserId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0:最高管理者; 1:管理者;  2:一般使用者', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Users', @level2type = N'COLUMN', @level2name = N'UserGroupId';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'工號', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Users', @level2type = N'COLUMN', @level2name = N'EmployeeNo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'帳號識別項', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Users', @level2type = N'COLUMN', @level2name = N'UserAccount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'帳號名稱', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Users', @level2type = N'COLUMN', @level2name = N'UserName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'姓', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Users', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Users', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'暱稱', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Users', @level2type = N'COLUMN', @level2name = N'NickName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'有效(帳號)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Users', @level2type = N'COLUMN', @level2name = N'Valid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'更新時間', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Users', @level2type = N'COLUMN', @level2name = N'UpdateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'建立時間', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Users', @level2type = N'COLUMN', @level2name = N'CreateTime';

