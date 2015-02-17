CREATE PROCEDURE [dbo].[GetLocationsInRegion]
	@RegionID int
AS
	Select [dbo].[Locations].RegionID, [dbo].[Locations].LocationID From [dbo].[Locations]
	Where [dbo].[Locations].RegionID = @RegionID
RETURN 0
