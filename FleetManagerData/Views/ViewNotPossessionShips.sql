CREATE VIEW [dbo].[ViewNotPossessionShips]	AS
	SELECT
	     b.ShipBaseCode
	    ,b.Grade
	    ,b.ShipName
	    ,CAST(NULL AS INT) AS ShipId
	    ,CAST(NULL AS TINYINT) AS Level
        ,CAST(NULL AS TINYINT) AS RemodelingLevel
	    ,CAST(NULL AS TINYINT) AS NextGrade
	    ,b.HitPoint
	    ,CAST(NULL AS SMALLINT) AS FirePower
	    ,b.MaxFirePower
	    ,CAST(NULL AS SMALLINT) AS TorpedoPower
	    ,b.MaxTorpedoPower
	    ,CAST(NULL AS SMALLINT) AS AntiAircraft
	    ,b.MaxAntiAircraft
	    ,CAST(NULL AS SMALLINT) AS Armor
	    ,b.MaxArmor
	    ,CAST(NULL AS SMALLINT) AS Luck
	    ,b.MaxLuck
	    ,CAST(NULL AS SMALLINT) AS AntiSubmarine
	    ,b.MaxAntiSubmarine
	    ,CAST(NULL AS SMALLINT) AS Avoidance
	    ,b.MaxAvoidance
	    ,CAST(NULL AS SMALLINT) AS Scouting
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
	    ,CAST(NULL AS DATETIME) AS UpdatedDateTime
	  FROM (
	    SELECT
		   subB.ShipBaseCode
		  ,MIN(subB.Grade) AS Grade
		  FROM       [dbo].[MstShipBase] AS subB
		 WHERE NOT EXISTS (
		   SELECT *
		     FROM [dbo].[TblShipData] AS d
			WHERE d.ShipBaseCode = subB.ShipBaseCode
		 )
		 GROUP BY
		   subB.ShipBaseCode
	  ) AS keys
	  INNER JOIN [dbo].[MstShipBase] AS b
	     ON keys.ShipBaseCode = b.ShipBaseCode
		AND keys.Grade        = b.Grade
	  INNER JOIN [dbo].[MstShipType] AS t
	     ON b.ShipTypeId = t.ShipTypeId
;
