package dao;

import modelo.Usuario;

public class UsuarioDAO extends GenericDAO<Usuario, String> {

    public UsuarioDAO() {
        super(Usuario.class);
    }
}
