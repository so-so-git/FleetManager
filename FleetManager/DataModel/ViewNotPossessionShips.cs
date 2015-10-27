//------------------------------------------------------------------------------
// <auto-generated>
//     このコードはテンプレートから生成されました。
//
//     このファイルを手動で変更すると、アプリケーションで予期しない動作が発生する可能性があります。
//     このファイルに対する手動の変更は、コードが再生成されると上書きされます。
// </auto-generated>
//------------------------------------------------------------------------------

namespace SO.FleetManager.DataModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class ViewNotPossessionShips
    {
        public string ShipBaseCode { get; set; }
        public byte Grade { get; set; }
        public string ShipName { get; set; }
        public Nullable<int> ShipId { get; set; }
        public Nullable<byte> Level { get; set; }
        public Nullable<byte> RemodelingLevel { get; set; }
        public Nullable<byte> NextGrade { get; set; }
        public byte HitPoint { get; set; }
        public Nullable<short> FirePower { get; set; }
        public short MaxFirePower { get; set; }
        public Nullable<short> TorpedoPower { get; set; }
        public short MaxTorpedoPower { get; set; }
        public Nullable<short> AntiAircraft { get; set; }
        public short MaxAntiAircraft { get; set; }
        public Nullable<short> Armor { get; set; }
        public short MaxArmor { get; set; }
        public Nullable<short> Luck { get; set; }
        public short MaxLuck { get; set; }
        public Nullable<short> AntiSubmarine { get; set; }
        public short MaxAntiSubmarine { get; set; }
        public Nullable<short> Avoidance { get; set; }
        public short MaxAvoidance { get; set; }
        public Nullable<short> Scouting { get; set; }
        public short MaxScouting { get; set; }
        public bool IsHighspeed { get; set; }
        public short FuelConsumption { get; set; }
        public short AmmoConsumption { get; set; }
        public byte SlotAvailable { get; set; }
        public byte Slot1Mounts { get; set; }
        public byte Slot2Mounts { get; set; }
        public byte Slot3Mounts { get; set; }
        public byte Slot4Mounts { get; set; }
        public bool IsBuiltInAntiAircraft { get; set; }
        public Nullable<System.DateTime> UpdatedDateTime { get; set; }
    }
}
