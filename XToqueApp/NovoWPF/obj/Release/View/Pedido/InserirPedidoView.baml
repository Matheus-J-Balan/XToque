   M S B A M L   `   `   `  ���� A  =XToque, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:NovoWPF.ViewNovoWPF.View  /clr-namespace:NovoWPF.ComunsNovoWPF.Comuns  5clr-namespace:NovoWPF.ViewModelNovoWPF.ViewModel  ?$clr-namespace:NovoWPF.RegraDeNegocioNovoWPF.RegraDeNegocio  +    %NovoWPF.View.Pedido.InserirPedidoView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:NovoWPF.View     /local1clr-namespace:NovoWPF.Comuns     2local2clr-namespace:NovoWPF.ViewModel     7local3$clr-namespace:NovoWPF.RegraDeNegocio       � Title$  Inserir Pedido��$	��500��$
��1200��$   NovoWPF.ViewModel.WindowCloser   EnableWindowClosing .  � WindowStartupLocation$ CenterScreen=�.��� .+��� .+��� $��20(�$��0��$
��Left=�INSERIR PEDIDO� -    �Name$ 
gridPedido�� � ColumnDefinitions �� $
��.55* ��� $
��1.5* ��� $
��1.5* � � RowDefinitions �� $��* ��� $��* ��� $��* ��� $��* ��� $��* ��� $��* ��� $��* ��� $��* �.+��� -    ��Name$ idPedidoBlock��$y�Visible=�$��0��$��0��$��Id��$��Right=�$��0 0 10 0q��� -    ��Name$ idPedidoBox��$y�Visible=�$��1��$��0�����#eee$��70��$
��Left=� �� 
IsReadOnly . $��	0 0 30 10q��� -   $ nomePedidoPessoaBlock��$y�Visible=�$��0��$��1��$��Pessoa*��$��Right=�$��0 0 10 0q��� -   $ nomePedidoPessoaBox��$y�Visible=�$��1��$��1�����#eee . $	��250��$
��Left=�$��	0 0 30 10q��� -   $ PedProdutosBlock��$y�Visible=�$��0��$��2��$��Right=�$��Nome/Código do produto*��$��0 0 10 0q��� -   $ PedProdutosBox��$y�Visible=�	 �� CharacterCasing$	 Upper=�$��1��$��2��$	��200��$
��Left=�$��	0 0 30 10q��� -   
 ��Name$
 IncluirProdutoPedido��$��20��$��Right=�$	��Top=�$��Inserir Produto��$��1��$��2��$	��100��$��0 0 50 0q����� *InserirProduto+�� -	   $ produtosPedidoBlock��$y�Visible=�$��0��$��4��$��	Produtos*��$��Right=�$��0 0 10 0q��� -
    ��Name$ produtosListBox��$y�Visible=�$��1��$
��Left=�$��4��$	��450��$	��150��$��	0 0 30 10q�����  �� 
TargetType" ��.���  �� Property � {� �� Value .  �� -   $ produtosBlock��$y�Visible=�$��2��$��3��$��Produtos disponíveis��$
��Left=�$��0 0 10 0q��� -   $ qtdBlock��$y�Visible=�$��2��$��3��$��Qtd produtos:��$��Center=�$��0 0 0 0q��� -   $ 
valorBlock��$y�Visible=�$��2��$��3��$��
Valor(R$):��$��Right=�$��0 0 60 0q��� -   $ produtosPedListBox��$y�Visible=�$��2��$
��Left=�$��4��$	��450��$	��150��$��	0 0 30 10q����� " ��.���  � {� .  ���� .R�� $	��450�� �� $
��1.5* ��� $
��1.5* ��� $
��0.5* ��� $��* �.+��� $��0��$��Normal$�$��Black"�����  �� Path$ Codigo��� $��1��$��Normal$�$��Black"����� $ NomeProduto��� $��2��$��Normal$�$��Black"����� $ QntdProduto��� $��3��$��Black"�$��Right=����� $ Valor� �� StringFormat$ N2���� -   $ qntdProdPedBlock��$y�Visible=�$��0��$��3��$��Right=�$��Quantidade*��$��0 0 10 0q��� -   $ qntdProdPedBox��$y�Visible=�$��1��$��3��$	��100��$
��Left=�$��	0 0 30 10q��� -   $ DataPedidoBlock��$y�Visible=�$��0��$��5��$��Right=�$��
Data Venda��$��0 0 10 0q��� -   $ DataPedidoBox��$y�Visible=� . $��1��$��5��$	��100��$
��Left=�$��	0 0 30 10q��� -   $ FormaPagPedidoBlock��$y�Visible=�$��0��$��6��$��Right=�$��Forma de Pagamento*��$��0 0 10 0q��� -    ��Name$ FormaPagPedidoBox��$y�Visible=�$��1��$��6��$	��120��$
��Left=�$��	0 0 30 10q�����  �� Source /   )NovoWPF.Comuns.EnumBindingSourceExtension  *M� *local3:FormaPagamento++�� -   $
 btnCancelarPedido��$y�Visible=�$��7��$��0��$��70��$��Cancelar��$��Right=�
���  ��$��25��$��	0 50 15 0q����� *CloseCommand+�� -   $
 btnSalvaPedido��$y�Visible=�$��7��$��2��$��70��$��Salvar��$��Right=�
�������$��25��$��	0 50 80 0q����� *SalvarPedido+