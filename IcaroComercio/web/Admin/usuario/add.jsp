<%@page import="dao.UsuarioDAO"%>
<%@page import="modelo.Usuario"%>
<%@include file="../cabecalho.jsp" %>
<%
    if (request.getParameter("txtLogin") != null) {
        UsuarioDAO dao = new UsuarioDAO();
        Usuario obj = new Usuario();
        obj.setLogin(request.getParameter("txtLogin"));
        obj.setSenha(request.getParameter("txtSenha"));
        if (request.getParameter("txtAdmin") != null) {
            obj.setAdmin(true);
        } else {
                obj.setAdmin(false);
        }
        dao.incluir(obj);
        response.sendRedirect("index.jsp");
    }
%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">
            Sistema de Comércio Eletrônico
            <small>Admin</small>
        </h1>
        <ol class="breadcrumb">
            <li>
                <i class="fa fa-dashboard"></i>  <a href="index.jsp">Área Administrativa</a>
            </li>
            <li class="active">
                <i class="fa fa-file"></i> Aqui vai o conteúdo de apresentação
            </li>
        </ol>
    </div>
</div>
<!-- /.row -->
<div class="row">
    <div class="panel panel-default">
        <div class="panel-heading">
            Usuario
        </div>
        <div class="panel-body">
            <form action="#" method="post">

                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Login</label>
                        <input class="form-control" type="text" name="txtLogin" required />
                    </div>
                    <div class="form-group">
                        <label>Senha</label>
                        <input class="form-control" type="password" name="txtSenha" required />
                    </div>
                    <div class="form-group">
                        <label>Admin</label>
                        <input class="form-control" type="checkbox" name="txtAdmin" />
                    </div>
                    <button class="btn btn-primary btn-sm" type="submit">Salvar</button>

            </form>

        </div>

    </div>
</div>
<!-- /.row -->
<%@include file="../rodape.jsp" %>