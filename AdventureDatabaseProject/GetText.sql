CREATE PROCEDURE [dbo].[GetText]
	@ItemID int
AS
	SELECT t.Name,t.Text From [dbo].[Texts] t
	Where t.ItemID = @ItemID
RETURN 0