using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Teste.Controlador
{
    public class ProdutoDAO
    {
        public List<Produto> GetProdutos()
        {
            ProdutoEntities ef = new ProdutoEntities();

            return ef.Produtoes.ToList();
        }

        public static bool IncluirCadastro(Produto produto)
        {
            ProdutoEntities ef = new ProdutoEntities();

            Produto existe = ef.Produtoes.Where(busca => busca.codigo == produto.codigo).FirstOrDefault();
            if(existe != null)
            {
                return false;
            }
            else
            {
                ef.Produtoes.Add(produto);
                ef.SaveChanges();
                return true;
            }

        }

    }
}