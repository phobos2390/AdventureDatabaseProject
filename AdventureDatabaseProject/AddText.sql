CREATE PROCEDURE [dbo].[AddText]
	@ItemID int,
	@Name varchar(50),
	@Text varchar(MAX)
AS
	Insert Into [dbo].[Items] (ItemID, ItemType)
	Values (@ItemID, 'text');

	Insert Into [dbo].[Texts] (ItemID, Name, Text)
	Values (@ItemID, @Name, @Text);
RETURN 0
