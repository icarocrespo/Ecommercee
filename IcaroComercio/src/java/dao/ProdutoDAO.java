package dao;

import modelo.Produto;

public class ProdutoDAO extends GenericDAO<Produto, Integer> {

    public ProdutoDAO() {
        super(Produto.class);
    }
}
