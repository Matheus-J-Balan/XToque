   M S B A M L   `   `   `  ����A  =XToque, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:NovoWPF.ViewNovoWPF.View  5      5clr-namespace:NovoWPF.ViewModelNovoWPF.ViewModel  5          NovoWPF.View.PessoaView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:NovoWPF.View     5      2local1clr-namespace:NovoWPF.ViewModel     5        � Title$  Pessoas��5	       � WindowStartupLocation$ CenterScreen=�5
   7   $	��450��5      $	��800��6    � DataContext 5      '   !NovoWPF.ViewModel.PessoaViewModel  5   
   .��5      � $��10q�6   .+�5   
   �� .+�5      � -   5         �Name$ gridPesquisaPessoa��5      $y�Visible=�6/    � ColumnDefinitions 5      �� 5      $��3* �6'   �� 5      $��1* �6'   �� 5      $��* �6'   .+�5      �� $��0��6   $��20��6,   $	��Top=�5      $��0 0 5 0q�5      $��Right=�5      $ ��Pesquisar por nome ou CPF:��5      �� 5       -   5         ��Name$ txtBoxPesquisaPessoa��5!      $��1��5       $��20��5"      $	��120��6&   $	��Top=�5#      $
��Left=�5$       �� CharacterCasing$ Upper=�5%      �� 5'      -   5         ��Name$ btnPesquisarNomeCPF��5'      $��Cancelar��5)      $��1��5*      $
��Left=�5+      
������ $��156,0,0,4.8q�5-      $��20��5.      $��2��5/      ��5(      �� *CancelarPesquisarPessoa+5/      �� 51      -   5        $! btnCancelarPesquisarNomeCPF��51      $��	Pesquisar��53      $��2��54      $
��Left=�55      
������ $��
60,0,0,4.8q�57      $��20��58      $��2��59      ��52      �� *PesquisarPessoa+59      5;      &   System.Windows.Controls.DataGrid  5=      -   5          Name$ dataGridPessoa��5@      	   CanUserReorderColumns	 .  
   CanUserResizeColumns
 .  $y�Visible=�5?      $��0 0 0 10q�5A      $	��300��5B         CanUserAddRows .     AutoGenerateColumns .     CanUserDeleteRows .    SelectionMode$ Single=�5F      ��5G      �� *	Pessoas+ � 	Resources 5I      =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType �� Property �� Value��%	  '        �� 5J      "  6   .�5K      ��  � ��
 �����5L   !   �� 5M       � ��$ Regular"�5N   !   �� 5O       � ��$ 1 1 1 1q�5P   !   �� 5Q       � ��
 �����5R   !   �� 5S       � ��$ 3 0 0 0q�5T   !   5U      5V         Columns 5X      0  *System.Windows.Controls.DataGridTextColumn  5Y      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6)      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ * 5\   )   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5[   )   �� *
IdPessoa+5\   )     5]      $
 Nome��6)    . $ 3* 5`   )    5_   )   �� *
NomePessoa+   EditingElementStyle 5a      �� 5b      " ��6$   .�5c   "   ��  �@��CharacterCasing$ Upper=�5d   )   5e      5g        5h      $	 CPF��6)    . $ 2* 5k   )    5j   )   �� *CPF+5k   )     5l      $ 	Endereço��6)    . $ 4* 5o   )    5n   )   �� *
Endereco+ 5q      �� 5r      " ��6$   .�5s   "   ��  �@��CharacterCasing$ Upper=�5t   )   5u      5w      5y      � 5{      $��	10 0 0 10q�6    5|      �� 5}      $��* �6'   �� 5~      $��* �6'   �� 5      $��* �6'   �� 5�      $��* �6'   �� 5�      $��2* �6'   .+�5�      �� $��	Cadastrar��5�      $��0��5�      
�������$��30��5�      $��90��5�      $
��Left=�5�      $��0 0 0 10q�5�      ��5�      �� *AbrirCadastroPessoa+5�      �� 5�      $��Editar��5�      $��1��5�      
����·�$��30��5�      $��90��5�      $
��Left=�5�      $��0 0 0 10q�5�      ��5�      �� *AbrirEditarPessoa+5�      �� 5�      $��Deletar Pessoa��5�      $��4��5�      
���  ��$��30��5�      $��90��5�      $��Right=�5�      $��	0 0 10 10q�5�      ��5�      �� *DeletarPessoa+5�      �� 5�      $��Fazer Pedido��5�      $��2��5�      
�������$��30��5�      $��90��5�      $
��Left=�5�      $��0 0 0 10q�5�      ��5�      �� *AbrirIncluirPedido+5�      �� 5�      $��Detalhar��5�      $��3��5�      
�������$��30��5�      $��90��5�      $
��Left=�5�      $��0 0 0 10q�5�      ��5�      �� *AbrirDetalhePedido+5�      5�      5�      5�      5�      