CREATE TABLE [dbo].[刀具型式表]
(
	[刀具編號] VARCHAR(255) NOT NULL PRIMARY KEY, 
    [刃長(H)] SMALLMONEY NULL, 
    [刃徑(D)] SMALLMONEY NULL, 
    [R角(R)] SMALLMONEY NULL, 
    [全長(L)] SMALLMONEY NULL, 
    [柄徑(SD)] SMALLMONEY NULL, 
    [刀具類型] VARCHAR(255) NULL, 
    [材質] VARCHAR(255) NULL, 
    [刃數] SMALLINT NULL, 
    [應還刀具] BIT NULL, 
    [預設應還時間] INT NULL
)
