using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SO.FleetManager.Commons
{
    /// <summary>
    /// 練度帯列挙体
    /// </summary>
    public enum LevelRange
    {
        /// <summary>設定無し</summary>
        None,
        /// <summary>未保有</summary>
        NotPossession,
        /// <summary>新人(1～19)</summary>
        Rookie,
        /// <summary>低練度(20～39)</summary>
        Low,
        /// <summary>中練度(40～59)</summary>
        Middle,
        /// <summary>高練度(60～79)</summary>
        High,
        /// <summary>熟練(80～89)</summary>
        Expert,
        /// <summary>精鋭(90～99)</summary>
        Elite,
        /// <summary>最精鋭(100～)</summary>
        Flagship,
    }
}
