   M S B A M L   `   `   `  ����N  JFurnitureProduction, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:FurnitureProduction.PagesFurnitureProduction.Pages  5      ,    &FurnitureProduction.Pages.DataGridPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:FurnitureProduction.Pages     5        N� Title$<  6Производство мебели - Запросы��5	       N� 
Background
 �����.��5      � .+�5   
   �� $$��Выберите запрос:��6   $��16(�5      $
��Bold"�5      $��
120,10,0,0q�5      $
��Left=�5      �� 5   
   -   5         ��Name$ QueryComboBox��5      $��
190,10,0,0q�5      $	��360��5      $��Center=�5      $	��Top=�5      $��14(�5      $��5q�5      .@�5      �� $D��>Товары, отгруженные 21 июня 2022 года��6   �� 5      $W��QСотрудники-менеджеры с более чем 3 клиентами��6   �� 5      $B��<Товары на складе с ценой более 1000��6   �� 5      $V��PКлиенты и количество приобретенных товаров��6   �� 5      $Z��TСотрудники с наибольшим количеством отгрузок��6   �� 5       $E��?Все отгрузки после 1 января 2022 года��6   5!      &   System.Windows.Controls.DataGrid  5#   
   -   5          Name$ ResultsDataGrid��5#      $��10,50,10,10q�5$         AutoGenerateColumns . $	��300��5&      
�������
���   �$��2q�5)      $��14(�5*      5+      5,      5-      