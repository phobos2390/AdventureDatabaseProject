CREATE PROCEDURE [dbo].[SetAdjacent]
	@SourceID int,
	@DestinationID int,
	@EdgeID int
AS
	If Exists (Select * From [dbo].[Locations] l Where l.LocationID = @DestinationID)
		Begin
			Insert Into [dbo].[LocationAdjacencies]
			Values (@SourceID, @DestinationID);
		End
	Else
		Begin
			Insert Into [dbo].[AdjacencyLimbo]
			Values (@SourceID, @DestinationID);
		End
RETURN 0
