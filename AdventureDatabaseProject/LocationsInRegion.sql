CREATE PROCEDURE [dbo].[LocationsInRegion]
	@RegionID int
AS
	SELECT LocationID From Locations l
	Where l.RegionID = @RegionID
RETURN 0