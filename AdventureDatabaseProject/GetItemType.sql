CREATE PROCEDURE [dbo].[GetItemType]
	@ItemID int
AS
	SELECT ItemType From Items i
	Where i.ItemID = @ItemID
RETURN 0
