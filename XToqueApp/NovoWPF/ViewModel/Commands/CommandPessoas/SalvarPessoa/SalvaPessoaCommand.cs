﻿using NovoWPF.Commands;
using NovoWPF.Comuns;
using NovoWPF.RegraDeNegocio;
using NovoWPF.View;
using System.Collections.ObjectModel;
using System.Windows;

namespace NovoWPF.ViewModel.Commands
{
    public class SalvaPessoaCommand : CommandBase
    {
        public ObservableCollection<Pessoa> Pessoas { get; set; }
        private CadastroPessoaView CadastroPessoaView { get; set; }
        public PessoaViewModel PessoaViewModel { get;  set; }

        public SalvaPessoaCommand(ObservableCollection<Pessoa> pessoas, CadastroPessoaView cadastroPessoaView, PessoaViewModel pessoaViewModel)
        {
            Pessoas = pessoas;
            CadastroPessoaView = cadastroPessoaView;
            PessoaViewModel = pessoaViewModel;
        }
        public override void Execute(object parameter)
        {
            bool CPFRegistrado = false;
            TelaProjetoViewModel telaProjetoViewModel = new TelaProjetoViewModel();
            if (!string.IsNullOrWhiteSpace(CadastroPessoaView.CPFBox.Text) && !string.IsNullOrWhiteSpace(CadastroPessoaView.nomePessoaBox.Text))
            {
                foreach (var item in Pessoas)
                {
                    if(CadastroPessoaView.CPFBox.Text == item.CPF)
                    {
                        CPFRegistrado = true;
                    }
                }

                if (Pessoa.ValidaCpf(CadastroPessoaView.CPFBox.Text) && !CPFRegistrado && !Pessoa.IsIdentical(CadastroPessoaView.CPFBox.Text))
                {
                    Pessoas.Add(new Pessoa(int.Parse(CadastroPessoaView.idPessoaBox.Text)
                                                   , CadastroPessoaView.nomePessoaBox.Text.ToUpper().Trim()
                                                   , CadastroPessoaView.CPFBox.Text
                                                   , CadastroPessoaView.EnderecoBox.Text.ToUpper().Trim()
                                                   , PessoaViewModel.IdPessoaLista));

                    PessoaViewModel.IdPessoaLista++;
                    telaProjetoViewModel.ExportarXmlPessoa(Pessoas, PessoaViewModel.IdPessoaLista);
                    MessageBox.Show($"Cliente {CadastroPessoaView.nomePessoaBox.Text} cadastrado com sucesso");
                    CadastroPessoaView.Close();
                }
                else
                {
                    MessageBox.Show("CPF Inválido ou ja cadastrado!");
                }
            }
            else
            {
                MessageBox.Show("Campos obrigatórios não preenchidos!!");
            }
        }
    }
}