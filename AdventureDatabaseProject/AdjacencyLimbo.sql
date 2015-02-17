CREATE TABLE [dbo].[AdjacencyLimbo]
(
	[SourceID] INT NOT NULL, 
    [DestinationID] INT NOT NULL, 
    CONSTRAINT [LimboSourceID] FOREIGN KEY ([SourceID]) REFERENCES [Locations]([LocationID]) 
)
