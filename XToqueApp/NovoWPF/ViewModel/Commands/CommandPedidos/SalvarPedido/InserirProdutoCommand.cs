using NovoWPF.Commands;
using NovoWPF.RegraDeNegocio;
using NovoWPF.View;
using NovoWPF.View.Pedido;
using NovoWPF.ViewModel.PedidosVM;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media;

namespace NovoWPF.ViewModel.Commands.CommandPedidos.SalvarPedido
{
    public class InserirProdutoCommand : CommandBase
    {
        public ObservableCollection<Produto> Produtos { get; set; }
        public List<Produto> ListaProdutos { get; set; }
        public InserirPedidoView InserirPedidoView { get; set; }
        public InserirPedidoViewModel InserirPedidoViewModel { get; set; }
        public InserirProdutoCommand(InserirPedidoView inserirPedidoView, InserirPedidoViewModel inserirPedidoViewModel, ObservableCollection<Produto> produtos)
        {
            InserirPedidoView = inserirPedidoView;
            InserirPedidoViewModel = inserirPedidoViewModel;
            Produtos = produtos;
            ListaProdutos = produtos.ToList();
        }
        public override void Execute(object parameter)
        {
            var dadoProduto = Produtos.IndexOf(Produtos.Where(p => (p.NomeProduto == InserirPedidoView.PedProdutosBox.Text.Trim() 
                                                                    || p.Codigo == InserirPedidoView.PedProdutosBox.Text.Trim())).FirstOrDefault());

            var qntdProdPed = int.Parse(InserirPedidoView.qntdProdPedBox.Text.Trim());

            var qntdProdutoDisp = ListaProdutos[dadoProduto].QntdProduto;

            if (qntdProdutoDisp < qntdProdPed)
            {
                MessageBox.Show($"Quantidade solicitada excede a disponível no estoque, atualmente disponível: {ListaProdutos[dadoProduto].QntdProduto}");
                return;
            }

            if (dadoProduto != -1 && InserirPedidoView.PedProdutosBox.Text != "" && InserirPedidoView.qntdProdPedBox.Text != "" && int.Parse(InserirPedidoView.qntdProdPedBox.Text) >= 1)
            {
                InserirPedidoView.produtosListBox.Items.Add($"{ListaProdutos[dadoProduto].Codigo} - {ListaProdutos[dadoProduto].NomeProduto}  Qntd: {qntdProdPed}   R$ {Produtos[dadoProduto].Valor * qntdProdPed}");

                InserirPedidoViewModel.ProdutosPedido.Add(new Produto(Produtos[dadoProduto].IdProduto,
                                                                      InserirPedidoView.PedProdutosBox.Text.Trim(),
                                                                      ListaProdutos[dadoProduto].Codigo,
                                                                      Produtos[dadoProduto].Valor, 
                                                                      int.Parse(InserirPedidoView.qntdProdPedBox.Text.Trim())));

                InserirPedidoView.PedProdutosBox.Text = "";
                InserirPedidoView.qntdProdPedBox.Text = "";
            }
            else
            {
                MessageBox.Show("Campos necessarios não preenchidos corretamente");
            }
        }
    }
}
