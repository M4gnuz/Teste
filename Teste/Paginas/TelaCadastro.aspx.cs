using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using Teste.Controlador;

namespace Teste.Paginas
{
    public partial class TelaCadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Produto produto = new Produto();

            if (txtCod.Equals(""))
            {
                Response.Write("<script>alert('Favor Informar o Còdigo do Produto');</script>");
            }
            else if (txtDesc.Equals(""))
            {
                Response.Write("<script>alert('Preencha a Descrição do Produto');</script>");
            }
            else if (txtVal.Equals(""))
            {
                Response.Write("<script>alert('Informe o Valor do Produto');</script>");
            }
            else if (txtQtd.Equals(""))
            {
                Response.Write("<script>alert('Informe a Quantidade');</script>");
            }
            else
            {     


            produto.codigo = int.Parse(txtCod.Text);
            produto.descricao = txtDesc.Text;
            produto.valor = decimal.Parse(txtVal.Text);
            produto.quantidade = int.Parse(txtQtd.Text);

            if (ProdutoDAO.IncluirCadastro(produto))
            {
                Response.Write("<script>alert('Cadastrado Com Sucesso');</script>");
                Server.Transfer("Default.aspx");
            }
            else
            {
                Response.Write("<script>alert('Erro no Cadastro.');</script>");
            }
            }
        }
    }
}