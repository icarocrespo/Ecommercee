package dao;

import modelo.Categoria;

public class CategoriaDAO extends GenericDAO<Categoria, Integer> {

    public CategoriaDAO() {
        super(Categoria.class);
    }
}