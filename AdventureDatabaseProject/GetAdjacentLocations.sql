CREATE PROCEDURE [dbo].[GetAdjacentLocations]
	@LocationID int = 0
AS
	SELECT DestinationID, EdgeID From LocationAdjacencies la
	Where la.SourceID = @LocationID
RETURN 0
