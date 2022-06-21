CREATE TABLE [dbo].[刀盒管理表] (
    [刀盒編號]    VARCHAR (255) NOT NULL,
    [刀盒名稱]    VARCHAR (255) NULL,
    [刀盒類型]    VARCHAR (255) NULL,
    [尺寸(長)]   SMALLMONEY           NULL,
    [尺寸(寬)]   SMALLMONEY           NULL,
    [尺寸(高)]   SMALLMONEY           NULL,
    [刀具編號]    VARCHAR (255) NULL,
    [儲位編號]    VARCHAR (255) NULL,
    [狀態]      VARCHAR (255) NULL,
    [應還日期]    DATE          NULL,
    [實際應歸還日期] DATE          NULL,
    [累計借出次數]  INT        DEFAULT ((0)) NULL,
    [累計借出時間]  INT           DEFAULT ((0)) NULL,
    CONSTRAINT [PK_刀盒管理表] PRIMARY KEY CLUSTERED ([刀盒編號] ASC)
);