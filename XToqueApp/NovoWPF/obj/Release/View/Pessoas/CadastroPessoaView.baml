   M S B A M L   `   `   `  ���� A  =XToque, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:NovoWPF.ViewNovoWPF.View  5clr-namespace:NovoWPF.ViewModelNovoWPF.ViewModel  %    NovoWPF.View.CadastroPessoaView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ,localclr-namespace:NovoWPF.View     2local1clr-namespace:NovoWPF.ViewModel       � Title$  Cadastrar Pessoa�� � WindowStartupLocation$ CenterScreen=�$	��300��$	��350��$   NovoWPF.ViewModel.WindowCloser   EnableWindowClosing .  � DataContext /   )NovoWPF.ViewModel.CadastroPessoaViewModel  .��� .+��� -    ��Name$ gridCadastrarPessoa��.+��� $��20(�$��0��$
��Left=��  � ColumnDefinitions �� $��* ��� $��4* �.+��� -    ��Name$ idPessoaBlock��$��0��$��1��$��Id��$��	10 0 0 10q�$
��Left=��� -    ��Name$ idPessoaBox��$��1��$��1�����#eee$��20��$��25��$
��Left=�$��	0 0 30 10q����� *Pessoa.IdPessoa+�  �� $��* ��� $��4* �.+��� -   $ nomePessoaBlock��$��0��$��2��$��Nome*��$��	10 0 0 10q�$
��Left=��� -   $ nomePessoaBox��$��1��$��2��$��20��$	��250�� �� CharacterCasing$ Upper=�$
��Left=�$��0 0 0 10q����� *Pessoa.NomePessoa+� $��0 0 0 10q� �� $��* ��� $��4* �.+��� -   $ CPFBlock��$��0��$��3��$
��CPF*��$��	10 0 0 10q�$
��Left=��� -   $ CPFBox��$��1��$��3��$��20��$	��100��$��Center=�$
��Left=�$��0 0 0 0q����� *
Pessoa.CPF+�� -   $ CPFSoNumero��$��1��$��3��$��Apenas Números��$��	10 0 70 0q�$��Right=�$��Center=��  �� $��* ��� $��4* �.+��� -	   $ EnderecoBlock��$��0��$��4��$��	Endereço��$��	10 0 0 10q�$
��Left=��� -
   $ EnderecoBox��$��1��$��20��$	��250��$
��Left=�$ Upper=�$��4��$��0 0 10 0q����� *Pessoa.Endereco+� $��Center=� �� $��* ��� $��* �.+��� -   	 ��Name$	 btnCancelarPessoa��$y�Visible=�$��5��$��0��$��70��$��Cancelar��$��Right=�
���  ��$��25��$��0 0 0 0q����� *CloseCommand+�� -   $	 btnSalvarNovaPessoa��$y�Visible=�$��5��$��1��
 �� 	IsDefault
 . $��70��$��Salvar��$��Right=�
��� � �$��25��$��10q����� *SalvarPessoa+�� -   $	 btnEditarNovaPessoa��$y�Visible=�$��5��$��1��$��70��$��Editar��$��Right=�
�������$��25��$��10q����� *EditarPessoa+