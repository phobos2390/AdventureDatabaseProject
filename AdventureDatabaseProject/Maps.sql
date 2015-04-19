CREATE TABLE [dbo].[Maps]
(
	[ItemID] INT NOT NULL, 
    [Image] IMAGE NOT NULL, 
    [RegionID] INT NOT NULL, 
    FOREIGN KEY ([ItemID]) REFERENCES [Items]([ItemID]), 
    FOREIGN KEY ([RegionID]) REFERENCES [Regions]([RegionID]) 
)
