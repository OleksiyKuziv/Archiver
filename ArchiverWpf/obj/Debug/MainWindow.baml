   M S B A M L   `   `   `  ����F  BArchiverWpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:ArchiverWpfArchiverWpf  5   	       ArchiverWpf.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:ArchiverWpf     5   	     � Title$  
MainWindow��5   	   $	��550��6   $	��750��6,   $	��550��6;   $	��750��6H    � 	Resources 5	       �� 
TargetType �� Property �� Value��%k  '��       '�� �     '�� "    '� �    �� 5
      " ��6   .�5      ��  � ��$ 14(�6#   �� 5       � ��$ 50��6!   �� 5       � ��$	 100��6    5      �� 5      " ��6   .�5      ��  � ��$ 14(�6#   �� 5       � ��$ 50��6!   �� 5       � ��$	 100��6    5      �� 5      " ��6   .�5      ��  � ��$	 100��6    �� 5       � ��$ 60��6!   �� 5       � ��$ 5q�6!   5      �� 5      " �6   .�5      ��  � ��$	 350��6    �� 5       � ��$ 30��6!   �� 5       � ��$ 10q�6!   5      5      .��5      � 
������� � ColumnDefinitions 5       �� 5!      $��* �6   �� 5"      $��* �6    � RowDefinitions 5$      �� 5%      $��* �6   �� 5&      $
��0.3* �6   .+�5(      � 
������� 5)      �� 5*   
   $��* �6   �� 5+   
   $
��0.4* �6   .+�5-      � 
�������.+�5.   
   �� $��0��6    �� Orientation$ 
Horizontal=�6"   .+�5/   
   �� $��Input: ��6   �� 50   
   
���������6   �� *DoneSerialize+ �� UpdateSourceTrigger$ PropertyChanged=�6V   �� 51      
���������6   �� *AllFileSerialize+$ PropertyChanged=�6Z   52   	   54   	   �� 55      $��1��6   $ 
Horizontal=�6    .+�56   
   � -   5        	 �Name$	 progressBarSerialize��56      
 � Minimum$
 0Q�6~    � Value 64   ��  �� Path$ DoneSerialize�$ PropertyChanged=� � Maximum 6�   �� *AllFileSerialize+57   	   58      � 59      $��1��6   
������� 5:      �� 5;   
   $��* �6   �� 5<   
   $
��0.4* �6   .+�5>      � 
�������.+�5@   
   �� $��0��6   $ 
Horizontal=�6"   .+�5A      �� $��Input: ��6   �� 5B      
���������6   �� *DoneDeSerialize+$ PropertyChanged=�6Z   �� 5C      
���������6   �� *AllFileDeSerialize+$ PropertyChanged=�6\   5D      5F   	   �� 5G      $��1��6   $ 
Horizontal=�6    .+�5H   
   � -   5        $	 progressBarDeSerialize��5H      $
 0Q�6�    66   �� $ DoneDeSerialize�$ PropertyChanged=� 6�   �� *AllFileDeSerialize+5I   	   5J      �� 5K      $��1��6   $ 
Horizontal=�6   .+�5L      �� ��6   �� *SourcePathArchiveCommand+.��6<   Source Path6I   �� 5M      ��6   �� *DestinationPathArchiveCommand+.��6A   Destination Path6S   �� 5N      ��6   �� *ArchiveCommand+.��62   	Archive6;   5O      �� 5P      $��2��6   $��1��6   $ 
Horizontal=�6.   .+�5Q      �� ��6   �� *SourcePathDeArchiveCommand+.��6>   Source Path6K   �� 5R      ��6   �� *!DestinationPathDeArchiveCommand+.��6C   Destination Path6U   �� 5S      ��6   �� *DeArchiveCommand+.��64   	DeArchive6?   5T      5U      5V      