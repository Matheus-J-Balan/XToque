   M S B A M L   `   `   `  ���� A  =XToque, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:NovoWPF.ViewNovoWPF.View  5clr-namespace:NovoWPF.ViewModelNovoWPF.ViewModel      NovoWPF.View.ProdutoView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ,localclr-namespace:NovoWPF.View     2local1clr-namespace:NovoWPF.ViewModel       � Title$  Produtos��$	��450��$	��800�� � WindowStartupLocation$ CenterScreen=�$   NovoWPF.ViewModel.WindowCloser   EnableWindowClosing .  � DataContext (   "NovoWPF.ViewModel.ProdutoViewModel  .��� $��10q� � ColumnDefinitions �� $
��188* ��� $��7* �.+��� $��2��.+�� -    �Name$ gridPesquisaProduto��$y�Visible=�$��Center=� �� $
��1.5* ��� $��* ��� $	��.5* ��� $	��.5* ��� $��* ��� $	��.6* ��� $��* �.+��� $��0��$$��Pesquisar por nome ou Código:��$��20��$��0 0 0 0q�$	��Top=�$
��Left=��� -    ��Name$ txtBoxPesquisaProduto��$��1��$��20��$	��115��$	��Top=�$
��Left=� �� CharacterCasing$ Upper=��� -    ��Name$ btnPesquisarProduto��$��5��$
��Left=�
������ $��	0 0 0 4.8q�$��20��$��30��$��2������ *PesquisarProduto+.���� $��/Images/Lupa.png���� -   $ btnCancelarProduto��$��6��$
��Left=�
������ $��-30 0 0 4.8q�$��20��$��30��$��2������ *CancelarPesquisarProduto+.���� $��/Images/X.png���� $��Valor: ��$��2��$��Right=�$��0 0 5 0q��� -   $ minimoTB��$��3��$��20��$��65��$	��Top=�$��Right=�$��0 0 -3 0q��� -   $ maximoTB��$��4��$��20��$��65��$	��Top=�$
��Left=�$��10 0 0 0q�&   System.Windows.Controls.DataGrid  -   	  Name$	 dataGridProduto��$y�Visible=�
   SelectionMode$
 Single=�   AutoGenerateColumns .     CanUserAddRows .  $��0, 0, 0, 10q�$	��300������ *
Produtos+ �� UpdateSourceTrigger$ PropertyChanged=� � 	Resources =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType �� Property �� Value��%�   '        �� "  .���  � ��
 �������  � ��$ Regular"���  � ��$ 1 1 1 1q���  � ��
 �������  � ��$ 3 0 0 0q�   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Id��   Width5  /System.Windows.Controls.DataGridLengthConverter$ *    
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *	IdProduto+  $
 Nome��$ 3*  .  �� *NomeProduto+  $ Codigo��$ 2*  .  �� *Codigo+  $ 
Quantidade��$ 2*  .  �� *QntdProduto+  $ Valor��$ *  .  �� *Valor+ �� StringFormat$ N2���  �� $��* ��� $��* ��� $��5* �.+��� $��	Cadastrar��
�������$��30��$��90��$
��Left=�$��0��$��	10 0 0 10q����� *AbrirCadastroProduto+�� $��Editar��
����·�$��30��$��90��$
��Left=�$��1��$��	10 0 0 10q����� *AbrirEditarProduto+�� $��Deletar��
���  ��$��30��$��2��$��	0,0,10,10q�$��Right=�$��90������ *DeletarProduto+