CREATE PROCEDURE [dbo].[GetLocation]
	@LocationID int
AS
	SELECT RegionID, LocationID, Name From [dbo].[Locations] locations
	Where locations.LocationID = @LocationID
RETURN 0
