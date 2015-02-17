CREATE PROCEDURE [dbo].[GetRegionInfo]
	@RegionID int
AS
	Select region.RegionID, region.Name From [dbo].[Regions] region
	Where region.RegionID = @RegionID
RETURN 0
