<%@page import="util.Criptografia"%>
<%@page import="dao.UsuarioDAO"%>
<%@page import="modelo.Usuario"%>
<%
    Usuario obj = new Usuario();
    UsuarioDAO dao = new UsuarioDAO();

    if (request.getParameter("txtLogin") != null) {
        try {
            obj.setLogin(request.getParameter("txtLogin"));
            if (request.getParameter("txtAdmin") != null) {
                obj.setAdmin(true);
            } else {
                obj.setAdmin(false);
            }
            obj.setSenha((request.getParameter("txtSenha")));
            dao.incluir(obj);
        } catch (IllegalStateException e) {
            out.print("Dado já existente");
        } finally {
            out.print("Operação finalizada");
        }
    }
    if (request.getParameter("txtLoginE").equals(obj.getLogin())) {
        session.setAttribute("usuario", request.getParameter("txtLoginE"));
        response.sendRedirect("home/index.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>

        <div>
            <h2>Já possui um login? Entre Aqui</h2>
            <form action="login.jsp" method="post">
                <label>Login:</label>
                <input type="text" name="txtLoginE" required><br>
                <label>Senha:</label>
                <input type="password" name="txtSenhaE" required><br>
                <input type="submit" value="Entrar"/>
            </form>
            <a href="#">Esqueci a Senha</a><br />
        </div>
        <div>
            <h2>Novo Login</h2>
            <form action="login.jsp" method="post">
                <label>Login:</label>
                <input type="text" name="txtLogin" required><br>
                <label>Senha:</label>
                <input type="password" name="txtSenha" required><br>
                <label>Admin:</label>
                <input type="checkbox" name="txtAdmin"><br>
                <input type="submit" value="Cadastrar"/>
            </form>
        </div>
    </body>
</html>
