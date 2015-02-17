CREATE TABLE [dbo].[KeyItems]
(
	[ItemID] INT NOT NULL, 
    [Name] VARCHAR(50) NOT NULL, 
    [Type] VARCHAR(50) NOT NULL, 
    [Text] VARCHAR(MAX) NOT NULL, 
    FOREIGN KEY ([ItemID]) REFERENCES [Items]([ItemID]) 
)
