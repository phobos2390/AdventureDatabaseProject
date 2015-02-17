CREATE TABLE [dbo].[Inventories]
(
	[PlayerID] INT NOT NULL, 
    [ItemID] INT NOT NULL, 
    FOREIGN KEY ([PlayerID]) REFERENCES [Players]([PlayerID]), 
    FOREIGN KEY ([ItemID]) REFERENCES [Items]([ItemID]) 
)
