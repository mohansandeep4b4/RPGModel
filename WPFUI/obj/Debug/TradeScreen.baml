   M S B A M L   `   `   `  ����A  =Engine, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE/clr-namespace:Engine.ViewModels;assembly=EngineEngine.ViewModels  5   	   	 WPFUI   WPFUI.TradeScreen   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   F
viewModels/clr-namespace:Engine.ViewModels;assembly=Engine     5   	     � WindowStartupLocation$  CenterOwner=�5	   	   $
��11pt(�5
   	    � Title$ Trade Screen��5   	   $	��480��6   $	��640��6+   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��0��6   $��2��6-   $��Center=�5      ��6-   �� *CurrentTrader.Name+�� 5   
   $��1��6   $��0��6   $��Center=�6-   $��Your Inventory��6J   �� 5   
   $��1��6   $��1��6   $��Center=�6-   $��Trader's Inventory��6J   &   System.Windows.Controls.DataGrid  5   
   $��2��6   $��0��6    $��10q�60      AutoGenerateColumns .     HeadersVisibility$ Column=�5    /      CanUserAddRows .     CanUserDeleteRows .  "   VerticalScrollBarVisibility$
 Auto=�5!   -   ��5   <   �� *CurrentPlayer.Inventory+	   Columns	 5"      0  *System.Windows.Controls.DataGridTextColumn  5#      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Description��6%      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6L   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5$   %   ��  �� Path$
 Name�  5&      $
 Price��6%    . $
 Auto 6F    5'   %   �� $ Price�4  .System.Windows.Controls.DataGridTemplateColumn  5(         MinWidth$ 75Q�6)      CellTemplate 5)      �� 5*      .R�5+      �� -   5        $��55��5+   :   $
��Sell��6E   5,      5.      51        53   
   $��2��6   $��1��6    $��10q�60    .  $ Column=�54   /    .   .  $
 Auto=�55   -   ��53   <   �� *CurrentTrader.Inventory+	 57        58      $
 Description��6%    . $ * 6L    59   %   �� $
 Name�  5:      $
 Price��6%   $
 Auto 64    .  5;   %   �� $ Price�  5=      $ 75Q�6)    5>      �� 5?      .R�5@      �� -   5        $��55��5@   9   $	��Buy��6D   5A      5C      5F      �� 5H   
   -   5        $��3��5H      $��1��6   $��Right=�6.   $��75��6J   $��Close��5I      6!   5K      5L      