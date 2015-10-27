using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace SO.FleetManager.Converters
{
    public class CurrentMaxStatusConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            if (values.Length < 2) return string.Empty;

            if (values[0] == null)
            {
                if (values[1] == null) return string.Empty;

                if (values[1].ToString() == "0") return "-";

                return string.Format("0 / {0}", values[1]);
            }

            if (values[1].ToString() == "0") return "-";

            return string.Format("{0} / {1}", values[0], values[1]);
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
