CREATE PROCEDURE [dbo].[AddItemToPlayerInventory]
	@ItemID int,
	@PlayerID int
AS
	Insert Into [dbo].[Inventories] (ItemID, PlayerID)
	Values (@ItemID, @PlayerID);
RETURN 0
