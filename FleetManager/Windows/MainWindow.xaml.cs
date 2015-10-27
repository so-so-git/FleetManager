using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using AutoMapper;

using SO.FleetManager.DataModel;
using SO.FleetManager.ViewModels;

namespace SO.FleetManager
{
    /// <summary>
    /// メインウィンドウクラス
    /// </summary>
    public partial class MainWindow : Window, INotifyPropertyChanged
    {
        #region 表示対象列挙体

        private enum ViewTarget
        {
            Possession,
            NotPossession,
            All,
        }

        #endregion

        #region コンストラクタ

        /// <summary>
        /// コンストラクタ
        /// </summary>
        public MainWindow()
        {
            Mapper.CreateMap<ViewAllShips, ShipDataModel>();
            Mapper.CreateMap<ViewPossessionShips, ShipDataModel>();
            Mapper.CreateMap<ViewNotPossessionShips, ShipDataModel>();

            InitializeComponent();

            //SearchShipData(ViewTarget.Possession);
        }

        #endregion

        #region プロパティ

        private ObservableCollection<ShipDataModel> _shipDataGridItemsSource = new ObservableCollection<ShipDataModel>();

        public ObservableCollection<ShipDataModel> ShipDataGridItemsSource
        {
            get { return _shipDataGridItemsSource; }
            set
            {
                if (_shipDataGridItemsSource == value) return;

                _shipDataGridItemsSource = value;

                if (PropertyChanged != null)
                {
                    PropertyChanged(this, new PropertyChangedEventArgs("ShipDataGridItemsSource"));
                }
            }
        }

        private bool _isColoringByLevel = false;

        public bool IsColoringByLebel
        {
            get { return _isColoringByLevel; }
            set
            {
                if (_isColoringByLevel == value) return;

                _isColoringByLevel = value;

                if (PropertyChanged != null)
                {
                    PropertyChanged(this, new PropertyChangedEventArgs("IsColoringByLebel"));
                }
            }
        }

        #endregion

        #region イベント

        /// <summary>
        /// プロパティ変更時のイベントです。
        /// </summary>
        public event PropertyChangedEventHandler PropertyChanged;

        #endregion

        private void SearchShipData(ViewTarget target)
        {
            Cursor = Cursors.Wait;
            try
            {
                _shipDataGridItemsSource.Clear();

                using (var entities = new FleetManagerDataEntities())
                {
                    var newList = new ObservableCollection<ShipDataModel>();

                    switch (target)
                    {
                        case ViewTarget.Possession:
                            foreach (var ship in entities.ViewPossessionShips.OrderBy(s => s.ShipBaseCode + s.Grade.ToString()))
                            {
                                var model = Mapper.Map<ViewPossessionShips, ShipDataModel>(ship);
                                newList.Add(model);
                            }
                            break;

                        case ViewTarget.NotPossession:
                            foreach (var ship in entities.ViewNotPossessionShips.OrderBy(s => s.ShipBaseCode + s.Grade.ToString()))
                            {
                                var model = Mapper.Map<ViewNotPossessionShips, ShipDataModel>(ship);
                                newList.Add(model);
                            }
                            break;

                        case ViewTarget.All:
                            foreach (var ship in entities.ViewAllShips.OrderBy(s => s.ShipBaseCode + s.Grade.ToString()))
                            {
                                var model = Mapper.Map<ViewAllShips, ShipDataModel>(ship);
                                newList.Add(model);
                            }
                            break;
                    }

                    ShipDataGridItemsSource = newList;
                }
            }
            finally
            {
                Cursor = null;
            }
        }

        private void rdoViewPossessions_Checked(object sender, RoutedEventArgs e)
        {
            SearchShipData(ViewTarget.Possession);
        }

        private void rdoViewotPossessions_Checked(object sender, RoutedEventArgs e)
        {
            SearchShipData(ViewTarget.NotPossession);
        }

        private void rdoViewAll_Checked(object sender, RoutedEventArgs e)
        {
            SearchShipData(ViewTarget.All);
        }
    }
}
