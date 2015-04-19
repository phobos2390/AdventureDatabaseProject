CREATE PROCEDURE [dbo].[GetEdge]
	@EdgeID int
AS
	SELECT e.EdgeID, e.Type From [Edges] e
	Where e.EdgeID = @EdgeID
RETURN 0