using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using MagazinCosmetiki.MagazinCosmetikiDataSetTableAdapters;

namespace MagazinCosmetiki
{
    public partial class MainWindow : Window
    {
        CategoriesTableAdapter categories = new CategoriesTableAdapter();
 

        public MainWindow()
        {
            InitializeComponent();
            categoriesdatagrid.ItemsSource = categories.GetData();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            PageFrame.Content = new Categories();
        }

        private void Button_Click1(object sender, RoutedEventArgs e)
        {
            PageFrame.Content = new Products();
        }

        private void Button_Click2(object sender, RoutedEventArgs e)
        {
            PageFrame.Content = new Country();
        }

        private void PageFrame_Navigated(object sender, NavigationEventArgs e)
        {

        }
    }
}