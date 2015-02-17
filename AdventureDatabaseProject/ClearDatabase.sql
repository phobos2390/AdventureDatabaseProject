CREATE PROCEDURE [dbo].[ClearDatabase]
AS
	Delete From [dbo].[AdjacencyLimbo]
	Delete From [dbo].[LocationAdjacencies]
	Delete From [dbo].[Locations]
	Delete From [dbo].[Regions]
	Delete From [dbo].[Items]
	Delete From [dbo].[KeyItems]
	Delete From [dbo].[Maps]
	Delete From [dbo].[Texts]
	Delete From [dbo].[LocationsItemsLink]
	Delete From [dbo].[Inventories]
	Delete From [dbo].[Players]
RETURN 0
