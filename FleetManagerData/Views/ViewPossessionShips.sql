CREATE VIEW [dbo].[ViewPossessionShips]	AS
	SELECT
	   b.ShipBaseCode
	  ,b.Grade
	  ,b.ShipName
	  ,d.ShipId
	  ,d.Level
	  ,b.RemodelingLevel
	  ,b.NextGrade
	  ,b.HitPoint
	  ,d.FirePower
	  ,b.MaxFirePower
	  ,d.TorpedoPower
	  ,b.MaxTorpedoPower
	  ,d.AntiAircraft
	  ,b.MaxAntiAircraft
	  ,d.Armor
	  ,b.MaxArmor
	  ,d.Luck
	  ,b.MaxLuck
	  ,d.AntiSubmarine
	  ,b.MaxAntiSubmarine
	  ,d.Avoidance
	  ,b.MaxAvoidance
	  ,d.Scouting
	  ,b.MaxScouting
	  ,b.IsHighspeed
	  ,b.FuelConsumption
	  ,b.AmmoConsumption
	  ,b.SlotAvailable
	  ,b.Slot1Mounts
	  ,b.Slot2Mounts
	  ,b.Slot3Mounts
	  ,b.Slot4Mounts
	  ,b.IsBuiltInAntiAircraft
	  ,d.UpdatedDateTime
	  FROM       [dbo].[TblShipData] AS d
	  INNER JOIN [dbo].[MstShipBase] AS b
	     ON d.ShipBaseCode = b.ShipBaseCode
		AND d.Grade        = b.Grade
	  INNER JOIN [dbo].[MstShipType] AS t
	     ON b.ShipTypeId = t.ShipTypeId
;
