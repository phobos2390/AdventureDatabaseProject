CREATE PROCEDURE [dbo].[GetItemBasicInfo]
	@ItemID int
AS
	SELECT items.ItemID, items.ItemType From [Items] items
	Where items.ItemID = @ItemID
RETURN 0
