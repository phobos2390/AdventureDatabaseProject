CREATE PROCEDURE [dbo].[AddKeyItem]
	@ItemID int,
	@Name varchar(50),
	@Type varchar(50),
	@Text varchar(MAX)
AS
	Insert Into [dbo].[Items] ([ItemID], [ItemType])
	Values (@ItemID, 'keyitem');

	Insert Into [dbo].[KeyItems] ([ItemID], [Name], [Type], [Text])
	Values (@ItemID, @Name, @Type, @Text);
RETURN 0
