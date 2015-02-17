CREATE PROCEDURE [dbo].[GetAllRegionLocationsAndAdjacencies]
	@RegionID int
--returns the location ID and the region ID for both all of the 
--locations in the region and all the locations that are adjacent 
--to locations in the region
AS
	Select LocationsInRegion.RegionID as RegionID, LocationsInRegion.LocationID as LocationID, LocationsInRegion.Name as Name From [dbo].[Locations] LocationsInRegion
	Where LocationsInRegion.RegionID = @RegionID
	
	Union

	SELECT endLocations.RegionID as RegionID, endLocations.LocationID as LocationID, endLocations.Name as Name From [dbo].[Locations] startLocations
	Join [dbo].[LocationAdjacencies] adjacencies On startLocations.LocationID = adjacencies.SourceID
	Join [dbo].[Locations] endLocations On adjacencies.DestinationID = endLocations.LocationID
	Where startLocations.RegionID = @RegionID And endLocations.RegionID != @RegionID
RETURN 0
