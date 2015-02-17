CREATE TABLE [dbo].[Players]
(
	[PlayerID] INT NOT NULL PRIMARY KEY, 
    [CurrentLocationID] INT NOT NULL, 
    [Name] VARCHAR(20) NOT NULL, 
    CONSTRAINT [CurrentLocationID] FOREIGN KEY ([CurrentLocationID]) REFERENCES [Locations]([LocationID])
)
