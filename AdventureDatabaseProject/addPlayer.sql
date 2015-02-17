CREATE PROCEDURE [dbo].[AddPlayer]
	@Name varchar(20),
	@DefaultLocationID int
AS
	Insert Into [dbo].[Players] ([Name],[CurrentLocationID])
	Values (@Name, @DefaultLocationID);
RETURN 0
