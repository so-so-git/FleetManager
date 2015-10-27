CREATE TABLE [dbo].[TblShipData]
(
	[ShipId] INT NOT NULL PRIMARY KEY IDENTITY(0, 1), 
    [ShipBaseCode] NCHAR(3) NOT NULL,
	[Grade] TINYINT NOT NULL, 
    [Level] TINYINT NOT NULL DEFAULT 1,
    [FirePower] SMALLINT NOT NULL, 
    [TorpedoPower] SMALLINT NOT NULL, 
    [AntiAircraft] SMALLINT NOT NULL, 
    [Armor] SMALLINT NOT NULL, 
    [Luck] SMALLINT NOT NULL, 
    [AntiSubmarine] SMALLINT NOT NULL, 
    [Avoidance] SMALLINT NOT NULL, 
    [Scouting] SMALLINT NOT NULL, 
    [CreatedDateTime] DATETIME NOT NULL, 
    [UpdatedDateTime] DATETIME NULL DEFAULT NULL, 
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'艦娘ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TblShipData',
    @level2type = N'COLUMN',
    @level2name = N'ShipId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'艦船基本データコード',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TblShipData',
    @level2type = N'COLUMN',
    @level2name = 'ShipBaseCode'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'レベル',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TblShipData',
    @level2type = N'COLUMN',
    @level2name = N'Level'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'火力',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TblShipData',
    @level2type = N'COLUMN',
    @level2name = 'FirePower'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'雷装',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TblShipData',
    @level2type = N'COLUMN',
    @level2name = 'TorpedoPower'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'対空',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TblShipData',
    @level2type = N'COLUMN',
    @level2name = N'AntiAircraft'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'装甲',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TblShipData',
    @level2type = N'COLUMN',
    @level2name = N'Armor'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'運',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TblShipData',
    @level2type = N'COLUMN',
    @level2name = N'Luck'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'登録日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TblShipData',
    @level2type = N'COLUMN',
    @level2name = N'CreatedDateTime'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TblShipData',
    @level2type = N'COLUMN',
    @level2name = N'UpdatedDateTime'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'対潜',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TblShipData',
    @level2type = N'COLUMN',
    @level2name = N'AntiSubmarine'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'回避',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TblShipData',
    @level2type = N'COLUMN',
    @level2name = N'Avoidance'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'索敵',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TblShipData',
    @level2type = N'COLUMN',
    @level2name = N'Scouting'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'改造段階',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'TblShipData',
    @level2type = N'COLUMN',
    @level2name = 'Grade'