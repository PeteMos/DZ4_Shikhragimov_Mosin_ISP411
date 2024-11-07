using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace FurnitureProduction
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Classes.Manager.MainFrame = MainFrame;
            Classes.Manager.MainFrame.Navigate(new Pages.DataGridPage());
        }
    }
}
