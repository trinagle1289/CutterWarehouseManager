CREATE TABLE [dbo].[刀具入出庫紀錄表]
(
	[timestemp] TIMESTAMP NOT NULL PRIMARY KEY, 
    [刀盒編號] VARCHAR(255) NULL, 
    [刀具編號] VARCHAR(255) NULL, 
    [領用工單號] VARCHAR(255) NULL, 
    [領出/歸還] VARCHAR(255) NULL, 
    [領出/歸還時間] DATETIME NULL 
)
