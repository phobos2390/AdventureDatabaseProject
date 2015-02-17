CREATE PROCEDURE [dbo].[GetItemsAtLocation]
	@LocationID int
AS
	SELECT lil.ItemID, it.ItemType From LocationsItemsLink lil
	Join [Items] it On it.ItemID = lil.ItemID
	Where lil.LocationID = @LocationID
RETURN 0
