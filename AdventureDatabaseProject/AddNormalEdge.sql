CREATE PROCEDURE [dbo].[AddNormalEdge]
	@EdgeID int
AS
	If Not Exists (Select [EdgeID] From [dbo].[Edges] Where [EdgeId] = @EdgeID)
		Begin
			Insert Into [dbo].[Edges] (EdgeId,Type)
			Values (@EdgeID, 'normal');
		End
RETURN 0
