﻿using NovoWPF.Commands;
using NovoWPF.Comuns;
using NovoWPF.RegraDeNegocio;
using NovoWPF.View;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Globalization;
using System.Xml.Linq;

namespace NovoWPF.ViewModel.Commands
{
    public class SalvarProdutoCommand : CommandBase
    {
        public ObservableCollection<Produto> Produtos { get; set; }
        public CadastroProdutoView CadastroProdutoView { get; set; }
        public ProdutoViewModel ProdutoViewModel { get; set; }

        public SalvarProdutoCommand(ObservableCollection<Produto> produtos, CadastroProdutoView cadastroProdutoView, ProdutoViewModel produtoViewModel)
        {
            Produtos = produtos;
            CadastroProdutoView = cadastroProdutoView;
            ProdutoViewModel = produtoViewModel;
        }

        public override void Execute(object parameter)
        {
            TelaProjetoViewModel telaProjetoViewModel = new TelaProjetoViewModel();

            if (!string.IsNullOrWhiteSpace(CadastroProdutoView.nomeProdutoBox.Text) && !string.IsNullOrWhiteSpace(CadastroProdutoView.codigoProdutoBox.Text)
                && !string.IsNullOrWhiteSpace(CadastroProdutoView.valorProdutoBox.Text) && !string.IsNullOrWhiteSpace(CadastroProdutoView.qntdProdutosBox.Text))
            {
                double valor = 0;
                if (!string.IsNullOrEmpty(CadastroProdutoView.valorProdutoBox.Text))
                {
                    valor = double.Parse(CadastroProdutoView.valorProdutoBox.Text.ToString(CultureInfo.GetCultureInfo("pt-BR")));
                }
                
                Produtos.Add(new Produto(int.Parse(CadastroProdutoView.idProdutoBox.Text),
                                                   CadastroProdutoView.nomeProdutoBox.Text.Trim(),
                                                   CadastroProdutoView.codigoProdutoBox.Text.Trim(),
                                                   valor,
                                                   ProdutoViewModel.IdProdutoLista,
                                                   int.Parse(CadastroProdutoView.qntdProdutosBox.Text.Trim())));

                ProdutoViewModel.IdProdutoLista++;
                telaProjetoViewModel.ExportarXmlProduto(Produtos, ProdutoViewModel.IdProdutoLista);
                MessageBox.Show($"Produto {CadastroProdutoView.nomeProdutoBox.Text} cadastrado com sucesso");

                CadastroProdutoView.Close();
            }
            else
            {
                MessageBox.Show("Campos obrigatórios não preenchidos!!");
            }
        }
    }
}
