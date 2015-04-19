CREATE PROCEDURE [dbo].[GetKeyItemEdge]
	@EdgeID int
AS
	SELECT e.EdgeID, e.KeyItemID From [KeyItemEdge] e
	Where e.EdgeID = @EdgeID
RETURN 0