﻿#pragma checksum "..\..\..\..\View\Produto\ProdutoView.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "4479D7C15D6B9B771DD1EE8931AC0903E2B2DF8D8F576E3B979D5177D5808F97"
//------------------------------------------------------------------------------
// <auto-generated>
//     O código foi gerado por uma ferramenta.
//     Versão de Tempo de Execução:4.0.30319.42000
//
//     As alterações ao arquivo poderão causar comportamento incorreto e serão perdidas se
//     o código for gerado novamente.
// </auto-generated>
//------------------------------------------------------------------------------

using NovoWPF.View;
using NovoWPF.ViewModel;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace NovoWPF.View {
    
    
    /// <summary>
    /// ProdutoView
    /// </summary>
    public partial class ProdutoView : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 24 "..\..\..\..\View\Produto\ProdutoView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid gridPesquisaProduto;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\..\..\View\Produto\ProdutoView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtBoxPesquisaProduto;
        
        #line default
        #line hidden
        
        
        #line 50 "..\..\..\..\View\Produto\ProdutoView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnPesquisarProduto;
        
        #line default
        #line hidden
        
        
        #line 61 "..\..\..\..\View\Produto\ProdutoView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnCancelarProduto;
        
        #line default
        #line hidden
        
        
        #line 77 "..\..\..\..\View\Produto\ProdutoView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox minimoTB;
        
        #line default
        #line hidden
        
        
        #line 86 "..\..\..\..\View\Produto\ProdutoView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox maximoTB;
        
        #line default
        #line hidden
        
        
        #line 98 "..\..\..\..\View\Produto\ProdutoView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dataGridProduto;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/XToque;component/view/produto/produtoview.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\View\Produto\ProdutoView.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal System.Delegate _CreateDelegate(System.Type delegateType, string handler) {
            return System.Delegate.CreateDelegate(delegateType, this, handler);
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.gridPesquisaProduto = ((System.Windows.Controls.Grid)(target));
            return;
            case 2:
            this.txtBoxPesquisaProduto = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.btnPesquisarProduto = ((System.Windows.Controls.Button)(target));
            return;
            case 4:
            this.btnCancelarProduto = ((System.Windows.Controls.Button)(target));
            return;
            case 5:
            this.minimoTB = ((System.Windows.Controls.TextBox)(target));
            
            #line 78 "..\..\..\..\View\Produto\ProdutoView.xaml"
            this.minimoTB.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.MinimoTB_TextChanged);
            
            #line default
            #line hidden
            return;
            case 6:
            this.maximoTB = ((System.Windows.Controls.TextBox)(target));
            
            #line 87 "..\..\..\..\View\Produto\ProdutoView.xaml"
            this.maximoTB.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.MaximoTB_TextChanged);
            
            #line default
            #line hidden
            return;
            case 7:
            this.dataGridProduto = ((System.Windows.Controls.DataGrid)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

