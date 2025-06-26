using NovoWPF.Commands;
using NovoWPF.Comuns;
using NovoWPF.RegraDeNegocio;
using NovoWPF.View.Pedido;
using NovoWPF.ViewModel.PedidosVM;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace NovoWPF.ViewModel.Commands.CommandPedidos.SalvarPedido
{
    public class SalvarPedidoCommand : CommandBase
    {
        public InserirPedidoView InserirPedidoView { get; set; }
        public InserirPedidoViewModel InserirPedidoViewModel { get; set; }
        public PessoaViewModel PessoaViewModel { get; set; }
        public ObservableCollection<Pedido> Pedidos { get; set; }
        public ObservableCollection<Produto> Produtos { get; set; }
        public SalvarPedidoCommand(InserirPedidoView inserirPedidoView, InserirPedidoViewModel inserirPedidoViewModel, PessoaViewModel pessoaViewModel, ObservableCollection<Pedido> pedidos, ObservableCollection<Produto> produtos)
        {
            InserirPedidoView = inserirPedidoView;
            InserirPedidoViewModel = inserirPedidoViewModel;
            PessoaViewModel = pessoaViewModel;
            Pedidos = pedidos;
            Produtos = produtos;
        }

        public override void Execute(object parameter)
        {
            TelaProjetoViewModel telaProjetoViewModel = new TelaProjetoViewModel();
            double valorPedido = 0;

            if (InserirPedidoView.FormaPagPedidoBox.SelectedValue != null && InserirPedidoView.produtosListBox.HasItems)
            {

                foreach (var produto in InserirPedidoViewModel.ProdutosPedido)
                {
                    var dadoProduto = Produtos.IndexOf(Produtos.Where(p => p.IdProduto == produto.IdProduto).FirstOrDefault());

                    var qntdProdutoExistente = Produtos[dadoProduto].QntdProduto;

                    Produtos[dadoProduto].QntdProduto = qntdProdutoExistente - produto.QntdProduto;

                    var valorPorQntd = produto.Valor * produto.QntdProduto;

                    valorPedido += valorPorQntd;
                }

                Pedidos.Add(new Pedido(Pedidos.Count + 1,
                                       InserirPedidoView.nomePedidoPessoaBox.Text.ToUpper(),
                                       InserirPedidoViewModel.ProdutosPedido,
                                       valorPedido,
                                       Convert.ToInt32(InserirPedidoView.FormaPagPedidoBox.SelectedValue),
                                       0,
                                       PessoaViewModel.IdPedidoLista + 1));

                telaProjetoViewModel.ExportarXmlPedido(Pedidos);
                telaProjetoViewModel.AtualizarXmlProduto(Produtos);
                InserirPedidoViewModel.ProdutosPedido.Clear();

                MessageBox.Show("Cadastro efetuado com sucesso");

                InserirPedidoView.Close();
            }
            else
            {
                MessageBox.Show("Preencha todos os campos obrigatórios!");
            }
        }
    }
}
