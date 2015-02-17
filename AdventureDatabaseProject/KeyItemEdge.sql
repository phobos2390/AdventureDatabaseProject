CREATE TABLE [dbo].[KeyItemEdges]
(
	[EdgeID] INT NOT NULL, 
    [KeyItemID] INT NOT NULL, 
    CONSTRAINT [KeyItemEdgeId] FOREIGN KEY ([EdgeID]) REFERENCES [Edges]([EdgeID]), 
    CONSTRAINT [KeyItemIDforedge] FOREIGN KEY ([KeyItemID]) REFERENCES [KeyItems]([ItemID])

)
