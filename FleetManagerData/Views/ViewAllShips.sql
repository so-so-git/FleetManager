CREATE VIEW [dbo].[ViewAllShips] AS
	SELECT * FROM [dbo].[ViewPossessionShips]
	UNION
	SELECT * FROM [dbo].[ViewNotPossessionShips]
;
