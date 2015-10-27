using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using SO.FleetManager.Commons;

namespace SO.FleetManager.Converters
{
    public class LevelRangeConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            if (values.Length < 2 || !System.Convert.ToBoolean(values[0])) return LevelRange.None;

            if (values[1] == null) return LevelRange.NotPossession;

            var level = System.Convert.ToByte(values[1]);

            if (level <= 19) return LevelRange.Rookie;
            if (level <= 39) return LevelRange.Low;
            if (level <= 59) return LevelRange.Middle;
            if (level <= 79) return LevelRange.High;
            if (level <= 89) return LevelRange.Expert;
            if (level <= 99) return LevelRange.Elite;

            return LevelRange.Flagship;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
