   M S B A M L   `   `   `  ���� A  =XToque, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:NovoWPF.ViewNovoWPF.View  5clr-namespace:NovoWPF.ViewModelNovoWPF.ViewModel      NovoWPF.View.PessoaView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ,localclr-namespace:NovoWPF.View     2local1clr-namespace:NovoWPF.ViewModel       � Title$  Pessoas�� � WindowStartupLocation$ CenterScreen=�$	��450��$	��800�� � DataContext '   !NovoWPF.ViewModel.PessoaViewModel  .��� $��10q�.+��� .+�� -    �Name$ gridPesquisaPessoa��$y�Visible=� � ColumnDefinitions �� $��3* ��� $��1* ��� $��* �.+��� $��0��$��20��$	��Top=�$��0 0 5 0q�$��Right=�$ ��Pesquisar por nome ou CPF:���� -    ��Name$ txtBoxPesquisaPessoa��$��1��$��20��$	��120��$	��Top=�$
��Left=� �� CharacterCasing$ Upper=��� -    ��Name$ btnPesquisarNomeCPF��$��Cancelar��$��1��$
��Left=�
������ $��156,0,0,4.8q�$��20��$��2������ *CancelarPesquisarPessoa+�� -   $! btnCancelarPesquisarNomeCPF��$��	Pesquisar��$��2��$
��Left=�
������ $��
60,0,0,4.8q�$��20��$��2������ *PesquisarPessoa+&   System.Windows.Controls.DataGrid  -     Name$ dataGridPessoa��	   CanUserReorderColumns	 .  
   CanUserResizeColumns
 .  $y�Visible=�$��0 0 0 10q�$	��300��   CanUserAddRows .     AutoGenerateColumns .     CanUserDeleteRows .    SelectionMode$ Single=����� *	Pessoas+ � 	Resources =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType �� Property �� Value��%�   '        �� "  .���  � ��
 �������  � ��$ Regular"���  � ��$ 1 1 1 1q���  � ��
 �������  � ��$ 3 0 0 0q�   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Id��   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ * 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *
IdPessoa+  $
 Nome�� . $ 3*  �� *
NomePessoa+   EditingElementStyle �� " ��.���  �@��CharacterCasing$ Upper=�  $	 CPF�� . $ 2*  �� *CPF+  $ 	Endereço�� . $ 4*  �� *
Endereco+ �� " ��.���  �@��CharacterCasing$ Upper=�� $��	10 0 0 10q� �� $��* ��� $��* ��� $��* ��� $��* ��� $��2* �.+��� $��	Cadastrar��$��0��
�������$��30��$��90��$
��Left=�$��0 0 0 10q����� *AbrirCadastroPessoa+�� $��Editar��$��1��
����·�$��30��$��90��$
��Left=�$��0 0 0 10q����� *AbrirEditarPessoa+�� $��Deletar Pessoa��$��4��
���  ��$��30��$��90��$��Right=�$��	0 0 10 10q����� *DeletarPessoa+�� $��Fazer Pedido��$��2��
�������$��30��$��90��$
��Left=�$��0 0 0 10q����� *AbrirIncluirPedido+�� $��Detalhar��$��3��
�������$��30��$��90��$
��Left=�$��0 0 0 10q����� *AbrirDetalhePedido+