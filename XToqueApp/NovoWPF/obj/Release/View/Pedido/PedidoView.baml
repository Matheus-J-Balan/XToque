   M S B A M L   `   `   `  ���� A  =XToque, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:NovoWPF.ViewNovoWPF.View      NovoWPF.View.PedidoView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ,localclr-namespace:NovoWPF.View       � Title$  Pedidos��$	��450��$	��800�� � WindowStartupLocation$ CenterScreen=�.��� .+��� .+�� -    �Name$ gridPesquisaStatus�� � ColumnDefinitions �� $
��1.5* ��� $��* �.+��� $��20(�$��Nome:��$y�Visible=�$��0 0 0 0q��� -    ��Name$ txtNomePedido��$��20(�$y�Visible=�$��65 0 0 0q��� -    ��Name$ btnPedidoTodos��$��0��$��Todos os pedidos��$��20��$��0 0 5 0q�$��Right=����� *PesquisarTodos+��  �� Orientation$ 
Horizontal=�$��1��.+��� -   $ btnPedidoPendente��$��Pedidos pendentes��$��20��$��0 0 5 0q�$��Right=����� *PesquisarPendente+�� -   $ btnPedidoPago��$��Pedidos pagos��$��20��$��0 0 5 0q�$��Right=����� *PesquisarPago+�� -   $ btnPedidoEntregue��$��Pedidos entregues��$��20��$��0 0 5 0q�$��Right=����� *PesquisarEntregue+&   System.Windows.Controls.DataGrid  -     Name$ dataGridPedidos��   CanUserReorderColumns .  	   CanUserResizeColumns	 .  
   SelectionMode$
 Single=�$��0 10 0 0q�$	��280��   CanUserAddRows .     AutoGenerateColumns .     CanUserDeleteRows .  � DataContext �� *	Pedidos+ � 	Resources =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType �� Property �� Value��%�   '        �� "  .���  � ��
 �������  � ��$ Regular"���  � ��$ 1 1 1 1q���  � ��
 �������  � ��$ 3 0 0 0q�   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Id��-   IdPedidoData��   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$	 .5* 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *
IdPedido+  $
 Data�� . $ *  �� *	DataVenda+   EditingElementStyle �� " ��.���  �@��CharacterCasing$ Upper=�  $ 	Pagamento�� . $ *  �� *FormaPagamento+ �� " ��.���  �@��CharacterCasing$ Upper=�  $ Status�� . $ *  �� *Status+ �� " ��.���  �@��CharacterCasing$ Upper=�  $ Valor total�� . $ *  �� *
ValorTotal+ �� StringFormat$ N2�� �� " ��.���  �@��CharacterCasing$ Upper=�� $��
10 10 0 10q� �� $��4* ��� $��* ��� $��* ��� $��* �.+��� -	   $ expandirPedido��$��0��$��30��$��90��$
��Left=�$��Expandir Pedido��
����� ����� *ExpandirPedido+�� -
   $ btnMarcarEnviado��$��1��$��30��$��90��$��Right=�$��Marcar Enviado��$��0 0 10 0q�
��� ������� *MarcarEnviado+�� -   $ btnMarcarRecebido��$��2��$��30��$	��102��$��Right=�$��Marcar Recebido��$��0 0 10 0q�
��� � ����� *MarcarRecebido+�� -   $ btnMarcarPago��$��3��$��30��$��90��$
��Left=�$��Marcar Pago��$��0 0 10 0q�
����������� *
MarcarPago+