<%@page import="dao.UsuarioDAO"%>
<%@page import="modelo.Usuario"%>
<%@include file="../cabecalho.jsp" %>
<%
    Usuario obj = new Usuario();
    if (request.getMethod().equals("POST")) {
        UsuarioDAO dao = new UsuarioDAO();
        obj.setLogin((request.getParameter("txtLogin")));
        obj.setSenha(request.getParameter("txtSenha"));
        if (request.getParameter("txtAdmin") != null) {
            obj.setAdmin(true);
        } else {
            obj.setAdmin(false);
        }
        dao.alterar(obj);
        response.sendRedirect("index.jsp");
        
    } else {
        if (request.getParameter("codigo") == null) {
            response.sendRedirect("index.jsp");
            return;
        }
        UsuarioDAO dao = new UsuarioDAO();
        obj = dao.buscarPorChavePrimaria((request.getParameter("codigo")));
        //dao.alterar(obj);
        if (obj == null) {
            response.sendRedirect("index.jsp");
            return;
        }
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
                        <input class="form-control" type="text" name="txtLogin" required value="<%=obj.getLogin()%>" />
                    </div>
                    <div class="form-group">
                        <label>Senha</label>
                        <input class="form-control" type="password" name="txtSenha" required value=""/>
                    </div>
                    <div class="form-group">
                        <label>Privilégios de Administrador?</label>
                        <input class="form-control" type="checkbox" name="txtAdmin" value="<%=obj.getAdmin()%>"/>
                    </div>

                    <button class="btn btn-primary btn-sm" type="submit">Salvar</button>
            </form>
        </div>
    </div>
</div>
<!-- /.row -->
<%@include file="../rodape.jsp" %>