<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Teste.Paginas.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #texto1{
           text-align:center;
        }
        #GridView1{
            margin-left: auto;
            margin-right: auto;
        }
         
    </style>
</head>
<body>
    <div id="texto1">
    <form id="form1" runat="server">
        <h3>TABELA DE PRODUTOS</h3><br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="Conexao1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="codigo" HeaderText="codigo" ReadOnly="True" SortExpression="codigo" />
                <asp:BoundField DataField="descricao" HeaderText="descricao" SortExpression="descricao" />
                <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="valor" />
                <asp:BoundField DataField="quantidade" HeaderText="quantidade" SortExpression="quantidade" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="Conexao1" runat="server" ConnectionString="<%$ ConnectionStrings:ProdutoConnectionString %>" SelectCommand="SELECT * FROM [Produto]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="btnCadastro" runat="server" OnClick="btnCadastro_Click" Text="Cadastrar" />
    </form>
        </div>
</body>
</html>
