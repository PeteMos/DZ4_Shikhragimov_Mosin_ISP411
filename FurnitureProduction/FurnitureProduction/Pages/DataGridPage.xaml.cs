using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using FurnitureProduction.Data;

namespace FurnitureProduction.Pages
{
    public partial class DataGridPage : Page
    {
        public DataGridPage()
        {
            InitializeComponent();
            MessageBox.Show($"Не задавайте нам вопросы, Мы знаем, просто переживаем, когда Вам отвечаем!", 
                "Добро пожаловать на нашу страницу!", 
                MessageBoxButton.OK, MessageBoxImage.Information);
        }
        private void QueryComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (QueryComboBox.SelectedItem is ComboBoxItem selectedItem)
            {
                try
                {
                    using (var context = new FurnitureProductionEntities())
                    {
                        switch (selectedItem.Content.ToString())
                        {
                            case "Товары, отгруженные 21 июня 2022 года":
                                var totalShipped = (from shipment in context.Shipments
                                                    where shipment.ShipmentDate >= new DateTime(2022, 6, 21) && shipment.ShipmentDate < new DateTime(2022, 6, 22)
                                                    select new
                                                    {
                                                        shipment.Products.Name,
                                                        shipment.Quantity,
                                                        shipment.ShipmentDate
                                                    }).ToList();

                                ResultsDataGrid.ItemsSource = totalShipped;
                                break;

                            case "Сотрудники-менеджеры с более чем 3 клиентами":
                                var managers = (from employee in context.Employees
                                                join position in context.Position on employee.IdPosition equals position.Id
                                                where position.Name == "менеджер" && employee.ClientCount > 3
                                                select new
                                                {
                                                    employee.Name,
                                                    employee.ClientCount
                                                }).ToList();

                                ResultsDataGrid.ItemsSource = managers;
                                break;

                            case "Товары на складе с ценой более 1000":
                                var expensiveProducts = (from product in context.Products
                                                         where product.StockQuantity > 0 && product.Price > 1000
                                                         select new
                                                         {
                                                             product.Name,
                                                             product.Price,
                                                             product.StockQuantity
                                                         }).ToList();

                                ResultsDataGrid.ItemsSource = expensiveProducts;
                                break;

                            case "Клиенты и количество приобретенных товаров":
                                var customerProducts = (from customer in context.Customers
                                                        join shipment in context.Shipments on customer.Id equals shipment.IdCustomer
                                                        group shipment by customer.Name into g
                                                        select new
                                                        {
                                                            CustomerName = g.Key,
                                                            TotalProducts = g.Sum(s => s.Quantity)
                                                        }).ToList();

                                ResultsDataGrid.ItemsSource = customerProducts;
                                break;

                            case "Сотрудники с наибольшим количеством отгрузок":
                                var employeesWithShipments = (from employee in context.Employees
                                                              join shipment in context.Shipments on employee.Id equals shipment.IdEmployee
                                                              group shipment by employee.Name into g
                                                              select new
                                                              {
                                                                  EmployeeName = g.Key,
                                                                  ShipmentCount = g.Count()
                                                              } into result
                                                              orderby result.ShipmentCount descending
                                                              select result).ToList();

                                ResultsDataGrid.ItemsSource = employeesWithShipments;
                                break;

                            case "Все отгрузки после 1 января 2022 года":
                                var shipmentsAfterDate = (from shipment in context.Shipments
                                                          join product in context.Products on shipment.IdProduct equals product.Id
                                                          where shipment.ShipmentDate > new DateTime(2022, 1, 1)
                                                          select new
                                                          {
                                                              shipment.IdShipment,
                                                              ProductName = product.Name,
                                                              shipment.Quantity,
                                                              shipment.ShipmentDate
                                                          }).ToList();

                                ResultsDataGrid.ItemsSource = shipmentsAfterDate;
                                break;
                        }
                        MessageBox.Show($"Запрос успешно выполнен!", "Успех!", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Не найдена БД в MS SQL!", "Произошла ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }
    }
}
