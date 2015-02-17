CREATE PROCEDURE [dbo].[AddKeyItemEdge]
	@EdgeID int,
	@KeyItemID int
AS
	If Not Exists (Select [EdgeID] From [dbo].[Edges] Where [EdgeId] = @EdgeID)
		Begin
			Insert Into [dbo].[Edges] (EdgeId,Type)
			Values (@EdgeID, 'keyitem');
		End
	If Not Exists (Select [EdgeID] From [dbo].[KeyItemEdges] Where [EdgeID] = @EdgeID)
		Begin
			Insert Into [dbo].[KeyItemEdges] (EdgeId,KeyItemID)
			Values (@EdgeID, @KeyItemID);
		End
RETURN 0
