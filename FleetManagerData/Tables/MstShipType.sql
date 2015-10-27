CREATE TABLE [dbo].[MstShipType]
(
	[ShipTypeId] INT NOT NULL PRIMARY KEY IDENTITY(0, 1), 
    [ShipTypeName] NVARCHAR(10) NOT NULL, 
    [CreatedDateTime] DATETIME NOT NULL, 
    [UpdatedDateTime] DATETIME NULL DEFAULT NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'艦種ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipType',
    @level2type = N'COLUMN',
    @level2name = 'ShipTypeId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'艦種名称',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipType',
    @level2type = N'COLUMN',
    @level2name = 'ShipTypeName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'登録日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipType',
    @level2type = N'COLUMN',
    @level2name = N'CreatedDateTime'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipType',
    @level2type = N'COLUMN',
    @level2name = N'UpdatedDateTime'