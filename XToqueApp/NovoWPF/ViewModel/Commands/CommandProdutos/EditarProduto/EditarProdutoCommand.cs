﻿using NovoWPF.Commands;
using NovoWPF.Comuns;
using NovoWPF.RegraDeNegocio;
using NovoWPF.View;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace NovoWPF.ViewModel.Commands.CommandProdutos.EditarProduto
{
    public class EditarProdutoCommand : CommandBase
    {
        public ObservableCollection<Produto> Produtos { get; set; }
        private CadastroProdutoView CadastroProdutoView { get; set; }
        public ProdutoViewModel ProdutoViewModel { get; set; }

        public EditarProdutoCommand(ObservableCollection<Produto> produtos, CadastroProdutoView cadastroProdutoView, ProdutoViewModel produtoViewModel)
        {
            Produtos = produtos;
            CadastroProdutoView = cadastroProdutoView;
            ProdutoViewModel = produtoViewModel;
        }

        public override void Execute(object parameter)
        {
            TelaProjetoViewModel telaProjetoViewModel = new TelaProjetoViewModel();
            if (!string.IsNullOrWhiteSpace(CadastroProdutoView.nomeProdutoBox.Text) && !string.IsNullOrWhiteSpace(CadastroProdutoView.codigoProdutoBox.Text)
                && !string.IsNullOrWhiteSpace(CadastroProdutoView.valorProdutoBox.Text))
            {

                int idText = Convert.ToInt32(CadastroProdutoView.idProdutoBox.Text);
                int indexList = Produtos.IndexOf(Produtos.Where(p => p.IdProduto == idText).FirstOrDefault());


                Produtos[indexList].NomeProduto = CadastroProdutoView.nomeProdutoBox.Text.ToUpper().Trim();
                Produtos[indexList].Codigo = CadastroProdutoView.codigoProdutoBox.Text.Trim();

                if (!string.IsNullOrEmpty(CadastroProdutoView.valorProdutoBox.Text))
                {
                    Produtos[indexList].Valor = double.Parse(CadastroProdutoView.valorProdutoBox.Text.ToString(CultureInfo.GetCultureInfo("pt-BR")));
                }
                
                if (!string.IsNullOrEmpty(CadastroProdutoView.qntdProdutosBox.Text))
                {
                    Produtos[indexList].QntdProduto = int.Parse(CadastroProdutoView.qntdProdutosBox.Text.Trim());
                }

                telaProjetoViewModel.AtualizarXmlProduto(Produtos);

                MessageBox.Show($"Produto: {CadastroProdutoView.nomeProdutoBox.Text} editado com sucesso");
          
                CadastroProdutoView.Close();
            }
            else
            {
                MessageBox.Show("Campos obrigatórios não preenchidos!!");
            }

        }
    }
}

