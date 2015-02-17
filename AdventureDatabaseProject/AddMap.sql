CREATE PROCEDURE [dbo].[AddMap]
	@ItemID int,
	@Image image,
	@RegionID int
AS
	Insert Into [dbo].[Items] (ItemID, ItemType)
	Values (@ItemID, 'map');

	Insert Into [dbo].[Maps] (ItemID, Image, RegionID)
	Values (@ItemID, @Image, @RegionID);
RETURN 0
