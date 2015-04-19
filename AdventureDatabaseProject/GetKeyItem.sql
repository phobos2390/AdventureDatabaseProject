CREATE PROCEDURE [dbo].[GetKeyItem]
	@ItemID int
AS
	SELECT k.Name,k.Text From [dbo].[KeyItems] k
	Where k.ItemID = @ItemID
RETURN 0
