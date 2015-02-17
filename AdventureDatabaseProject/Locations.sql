CREATE TABLE [dbo].[Locations]
(
	[LocationID] INT NOT NULL PRIMARY KEY, 
    [RegionID] INT NOT NULL, 
    [Name] VARCHAR(50) NOT NULL, 
    CONSTRAINT [RegionID] FOREIGN KEY ([RegionID]) REFERENCES [Regions]([RegionID])
)
