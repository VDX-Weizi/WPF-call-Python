   M S B A M L   `   `   `  ����G  CPyRunnerDemo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:PyRunnerDemo.UIPyRunnerDemo.UI  5   	        PyRunnerDemo.UI.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,uiclr-namespace:PyRunnerDemo.UI     5   	   X TXceed.Wpf.Toolkit, Version=3.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xcwt)http://schemas.xceed.com/wpf/xaml/toolkit  5   	     � Title$  Stocks��5	   	   $	��570��5
   	   $
��1240��6    � 	Resources 5      /   )PyRunnerDemo.UI.BoolToVisibilityConverter   BoolToVisibleConverter   	TrueValue   
FalseValue6   0PyRunnerDemo.UI.InverseBoolToVisibilityConverter ! InverseBoolToVisibleConverter   
FalseValue   	TrueValue��%�   &	        &	 ;       5   
   $ Visible=�5   '   $ Hidden=�5   '     5   
   $ Visible=�5   .   $ Hidden=�5   .   5       � DataContext 5      #   PyRunnerDemo.UI.MainViewModel  5   
   .��5      � $	��529��6   $	��Top=�6    � ColumnDefinitions 5   
   �� 5      $	��386 �6   �� 5      $	��648 �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $��28 �6   �� 5      $��* �6   �� 5      $��40 �6   .+�5!   
   � $��0��6   $
��8, 2q�6    5"      �� 5#      $��40 �6#   �� 5$      $��58 �6#   �� 5%      $	��250 �6#   .+�5'      �� $��0��6   $��Center=�5(      $��Center=�5)      $��Center=�5*      	 d� IsThreeState	 . 
 d� 	IsChecked
 5,      �� *StockListVm.SelectedFilter+�� 5-   
   $��1��6   $��58��5.      $
��Left=�5/      $��Center=�50      ��51      �� *StockListVm.TickerFilterText+ �� UpdateSourceTrigger$ PropertyChanged=��� 52   
   $��2��6   $	��248��53      $
��Left=�54      $��Center=�55      ��56      �� *StockListVm.NameFilterText+$ PropertyChanged=�57      &   System.Windows.Controls.DataGrid  58   
   $��1��6   $��0��6    $��
8, 2, 8, 8q�59         SelectionMode$ Single=�5;         AutoGenerateColumns .     CanUserResizeColumns .    CanUserSortColumns .    CanUserAddRows .     CanUserDeleteRows .  ��5:      �� *StockListVm.CollectionView+ �� Mode$ OneWay=�   Columns 5A      4  .System.Windows.Controls.DataGridCheckBoxColumn  5B      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 30 6)      CanUserSort .    SortMemberPath$ 
IsSelected��6u   1  +System.Windows.Controls.DataGridBoundColumn   Binding 64   �� *(ui:StockItem.IsSelected)+6u   0	  *System.Windows.Controls.DataGridTextColumn	  5C      $ 60 6%      Header$ Ticker��60      
IsReadOnly .  . $ Ticker��6�    6@   �� *(ui:StockItem.Ticker)+6�   	  5D      $	 250 6%   $
 Name��61    .  . $
 Name��6�      SortDirection$ 	AscendingX�6�    6?   �� *(ui:StockItem.Name)+6�   5F      � 5G   
   $��2��6   $��1��6    5H      �� 5I      $��10 �6#   �� 5J      $
��.33* �6#   �� 5K      $
��.33* �6#   �� 5L      $
��.33* �6#   .+�5N      ��  �� Orientation$ 
Horizontal=�6   $��0��62   $��1��6?   .+�5O      �� $��Start Date:��6   $��Center=�6.   &
   Xceed.Wpf.Toolkit.DateTimeUpDown
  5P      $��Center=�6&   $	��120��5Q   &   $��
0, 0, 8, 0q�5R   &    
  Format$ 	YearMonth=�5T   &   ,  &Xceed.Wpf.Toolkit.Primitives.InputBase   AllowTextInput .  �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Value 5S   &   �� *	StartDate+   Minimum 5U   &   �� *MinStartDate+$ OneTime=�    Maximum  5V   &   �� *MaxStartDate+$ OneTime=�5W   &   5X      �� 5Y      $ 
Horizontal=�6   $��0��62   $��2��6?   .+�5Z      �� $��	End Date:��6   $��Center=�6(   
  5[      $��Center=�6&   $	��120��5\   &   $��
0, 0, 8, 0q�5]   &   $ 	YearMonth=�5_   &    .   5^   &   �� *	EndDate+ 5`   &   �� *
MinEndDate+$ OneTime=�  5a   &   �� *
MaxEndDate+$ OneTime=�5b   &   5c      �� 5d      $ 
Horizontal=�6   $��0��62   $��3��6?   .+�5e      �� $��Number of Clusters:��6   $��Center=�66   "  Xceed.Wpf.Toolkit.ByteUpDown  5f      $��60��6"   $��Center=�5g   "    .  �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Byte, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]!   Value! 5h   "   �� *NumClusters+"   Minimum" 5i   "   �� *MinClusters+$ OneTime=�#   Maximum# 5j   "   �� *MaxClusters+$ OneTime=�5k   "   5l      5m      �� 5n   
   $��2��6   $��0��6"   $��
8, 5, 8, 7q�5o      $ 
Horizontal=�5p      .+�5q      �� $	��100��6   $��28��6!   $��0, 0, 12, 0q�5r      $��Check Filtered��5s      ��5t      �� *)'StockListVm.CheckAllVisibleItemsCommand+�� 5u      $	��140��6   $��28��6!   $��0, 0, 12, 0q�5v      $��Check Random Sample��5w      ��5x      �� *&$StockListVm.CheckRandomSampleCommand+�� 5y      $	��100��6   $��28��6!   $��Uncheck All��5z      ��5{      �� *StockListVm.UncheckAllCommand+5|      '  !Xceed.Wpf.Toolkit.Zoombox.Zoombox  5}   
   $��0��6   $��1��6$   $��2��64   $	��640��5~      $	��480��5      $   Scale$	$ 1.1Q�5�      %   Position$% -42, -64&�5�      y�5�      �� *NeedsChartRedraw+& �� 	Converter#& [ $ OneWay=�.��5�      �� $	��700��5�      $	��520��5�      ��5�      �� *ChartVm.SummaryChart+5�      5�      �� 5�   
   $��0��6   $��1��6   $��2��6/   ' �� 
IsReadOnly' . $( �� HorizontalScrollBarVisibility$
( Auto=�5�      ") �� VerticalScrollBarVisibility$
) Auto=�5�      $��0q�5�      $��Center=�5�      $��Center=�5�      $��12q�5�      $��12q�5�      ��5�      �� *ChartVm.SummaryChartText+$ OneWay=�y�5�      �� *NeedsChartRedraw+#& [  $ OneWay=�R� 5�   
   $��0��6   $��2��6!   $��2��61   $��
8, 2, 8, 8q�5�      ��5�      �� *TreeViewVm.Items+$ OneWay=�y�5�      �� *NeedsTreeRefresh+#& [ $ OneWay=��� 5�   
   $��0��6   $��2��6   $��2��6/   ' . $
( Auto=�5�      $
) Auto=�5�      $��12q�5�      $��12q�5�      $��0q�5�      $��Center=�5�      $��Center=�5�      ��5�      �� *TreeViewVm.TreeViewText+$ OneWay=�y�5�      �� *NeedsTreeRefresh+#& [  �� 5�   
   $ 
Horizontal=�6   $��2��6.   $��2��6;   $��Right=�5�      .+�5�      �� $��90��6   $
��Left=�6    ��6<   �� *HelloWorldVm.HelloWorldString+$ OneWay=��� 5�      $��80��6   $��30��6    $��
0, 0, 8, 0q�5�      $��Analyze��5�      $
��Bold"�5�      $��14(�5�      ��5�      �� *DoAnalysisCommand+5�      5�      5�      