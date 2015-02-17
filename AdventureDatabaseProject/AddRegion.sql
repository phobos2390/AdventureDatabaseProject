CREATE PROCEDURE [dbo].[AddRegion]
	@RegionID int,
	@Name varchar(50)--,
	--@MapID int
AS
	If Not Exists (Select * From [dbo].[Regions] Where RegionID = @RegionID)
	Begin
		Insert Into [dbo].[Regions] (RegionID, Name)--, MapID)
		Values (@RegionID, @Name);--, @MapID);
	End
RETURN 0
