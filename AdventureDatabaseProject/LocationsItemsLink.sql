CREATE TABLE [dbo].[LocationsItemsLink]
(
	[LocationID] INT NOT NULL, 
    [ItemID] INT NOT NULL, 
    FOREIGN KEY ([LocationID]) REFERENCES [Locations]([LocationID]), 
    FOREIGN KEY ([ItemID]) REFERENCES [Items]([ItemID]) 
)
