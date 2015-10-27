CREATE TABLE [dbo].[MstShipBase]
(
	[ShipBaseCode] NCHAR(3) NOT NULL, 
	[Grade] TINYINT NOT NULL, 
    [ShipName] NVARCHAR(20) NOT NULL, 
    [ShipTypeId] INT NOT NULL, 
    [RemodelingLevel] TINYINT NULL, 
	[NextGrade] TINYINT NULL, 
    [HitPoint] TINYINT NOT NULL,
    [MaxFirePower] SMALLINT NOT NULL, 
    [MaxTorpedoPower] SMALLINT NOT NULL, 
    [MaxAntiAircraft] SMALLINT NOT NULL, 
    [MaxArmor] SMALLINT NOT NULL, 
    [MaxLuck] SMALLINT NOT NULL, 
    [MaxAntiSubmarine] SMALLINT NOT NULL, 
    [MaxAvoidance] SMALLINT NOT NULL, 
    [MaxScouting] SMALLINT NOT NULL, 
    [IsHighspeed] BIT NOT NULL, 
    [AttackRange] TINYINT NOT NULL, 
    [FuelConsumption] SMALLINT NOT NULL, 
    [AmmoConsumption] SMALLINT NOT NULL, 
    [SlotAvailable] TINYINT NOT NULL, 
    [Slot1Mounts] TINYINT NOT NULL, 
    [Slot2Mounts] TINYINT NOT NULL, 
    [Slot3Mounts] TINYINT NOT NULL, 
    [Slot4Mounts] TINYINT NOT NULL, 
    [IsBuiltInAntiAircraft] BIT NOT NULL DEFAULT 0, 
    [CreatedDateTime] DATETIME NOT NULL, 
    [UpdatedDateTime] DATETIME NULL DEFAULT NULL, 
    CONSTRAINT [PK_MstShipBase] PRIMARY KEY ([ShipBaseCode], [Grade])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'艦船基本データコード',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = 'ShipBaseCode'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'艦船名称',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = 'ShipName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'耐久',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'HitPoint'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'火力最大値',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'MaxFirePower'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'雷装最大値',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'MaxTorpedoPower'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'対空最大値',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'MaxAntiAircraft'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'装甲最大値',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'MaxArmor'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'速力高速フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'IsHighspeed'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'運最大値',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'MaxLuck'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'通常射程',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'AttackRange'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'燃料消費',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'FuelConsumption'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'弾薬消費',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'AmmoConsumption'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'スロット数',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = 'SlotAvailable'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'スロット1搭載数',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = 'Slot1Mounts'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'スロット2搭載数',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = 'Slot2Mounts'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'スロット3搭載数',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = 'Slot3Mounts'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'スロット4搭載数',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = 'Slot4Mounts'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'艦種ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = 'ShipTypeId'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'改造可能レベル',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'RemodelingLevel'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'対潜最大値',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'MaxAntiSubmarine'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'回避最大値',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'MaxAvoidance'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'索敵最大値',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'MaxScouting'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'高射装置内蔵フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'IsBuiltInAntiAircraft'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'登録日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'CreatedDateTime'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'UpdatedDateTime'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'改造段階',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = 'Grade'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'次改造段階',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'MstShipBase',
    @level2type = N'COLUMN',
    @level2name = N'NextGrade'