﻿CREATE TABLE [dbo].[Texts]
(
	[ItemID] INT NOT NULL, 
    [Name] VARCHAR(50) NOT NULL, 
    [Text] VARCHAR(MAX) NOT NULL, 
    FOREIGN KEY ([ItemID]) REFERENCES [Items]([ItemID]) 
)
