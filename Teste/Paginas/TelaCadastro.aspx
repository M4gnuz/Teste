<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaCadastro.aspx.cs" Inherits="Teste.Paginas.TelaCadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #geral{
            text-align: center;          
        }
        table{
             margin-left: auto;
            margin-right: auto;
        }

    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="geral">
            <table>
            Cadastro de Produto<br />
            <br />
                <tr>
                    <td>Código:</td>
                    <td><asp:TextBox ID="txtCod" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Descrição:</td>
                    <td><asp:TextBox ID="txtDesc" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Valor:</td>
                    <td> <asp:TextBox ID="txtVal" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Quantide:</td>
                    <td>  <asp:TextBox ID="txtQtd" runat="server"></asp:TextBox></td>
                </tr>          
                </table>
            <br />
            <br />

            <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
        </div>
    </form>

    <script type="text/javascript">
        $("#btnSalvar").click = function () {
            if ($("#txtCod").val == "") {
                alert("Preecha o código");
                return false;
            } else {
                btnSalvar_Click();
            }
        }
    </script>
    
</body>
</html>
