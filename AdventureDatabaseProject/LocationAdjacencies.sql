CREATE TABLE [dbo].[LocationAdjacencies]
(
	[SourceID] INT NOT NULL , 
    [DestinationID] INT NOT NULL, 
    [EdgeID] INT NULL, 
    CONSTRAINT [SourceID] FOREIGN KEY ([SourceID]) REFERENCES [Locations]([LocationID]), 
    CONSTRAINT [DestinationID] FOREIGN KEY ([DestinationID]) REFERENCES [Locations]([LocationID]), 
    CONSTRAINT [EdgeID] FOREIGN KEY ([EdgeID]) REFERENCES [Edges]([EdgeID])
)
