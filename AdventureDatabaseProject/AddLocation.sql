CREATE PROCEDURE [dbo].[AddLocation]
	@LocationID int,
	@RegionID int,
	@Name varchar(50)
AS
	If Not Exists ( Select * From [dbo].[Locations] locations Where locations.LocationID = @LocationID)
		Begin
			Insert Into [dbo].[Locations] (LocationID, RegionID, Name)
			Values (@LocationID, @RegionID, @Name);
		End
	If Exists ( Select * From [dbo].[AdjacencyLimbo] limbo Where limbo.DestinationID = @LocationID)
		Begin
			Insert Into [dbo].[LocationAdjacencies]
			Select * From [dbo].[AdjacencyLimbo] limbo
			Where limbo.DestinationID = @LocationID
			
			Delete From [dbo].[AdjacencyLimbo]
			Where DestinationID = @LocationID
		End
RETURN 0
