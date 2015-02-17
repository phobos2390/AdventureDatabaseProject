CREATE PROCEDURE [dbo].[GetAdjacentRegionLocations]
	@RegionID int
AS
	SELECT endLocations.RegionID as RegionID, endLocations.LocationID as LocationID From [dbo].[Locations] startLocations
	Join [dbo].[LocationAdjacencies] adjacencies On startLocations.LocationID = adjacencies.SourceID
	Join [dbo].[Locations] endLocations On adjacencies.DestinationID = endLocations.LocationID
	Where startLocations.RegionID = @RegionID And endLocations.RegionID != @RegionID
RETURN 0
