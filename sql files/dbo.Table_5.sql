CREATE TABLE [dbo].[使用者基本資料表]
(
	[使用者帳號] VARCHAR(255) NOT NULL PRIMARY KEY, 
    [使用者姓] VARCHAR(255) NULL, 
    [使用者名] VARCHAR(255) NULL, 
    [使用者別名] VARCHAR(255) NULL, 
    [權限] VARCHAR(255) NULL 
)
