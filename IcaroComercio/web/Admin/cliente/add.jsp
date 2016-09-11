<%@page import="util.Criptografia"%>
<%@page import="dao.ClienteDAO"%>
<%@page import="modelo.Cliente"%>
<%@include file="../cabecalho.jsp" %>
<%
    if (request.getMethod().equals("POST")) {
        if(request.getParameter("txtNome") != null){
            ClienteDAO dao = new ClienteDAO();
            Cliente obj = new Cliente();
            obj.setNome(request.getParameter("txtNome"));
            obj.setEmail(request.getParameter("txtEmail"));
            String lala = Criptografia.convertPasswordToMD5(request.getParameter("txtSenha"));
            obj.setSenha(lala);
            obj.setEndereco(request.getParameter("txtEndereco"));
            obj.setBairro(request.getParameter("txtBairro"));
            obj.setCidade(request.getParameter("txtCidade"));
            obj.setEstado(request.getParameter("txtEstado"));
            obj.setCep(request.getParameter("txtCep"));
            dao.incluir(obj);
            response.sendRedirect("index.jsp");
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
            Cliente
        </div>
        <div class="panel-body">
            <form action="#" method="post">

                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Nome</label>
                        <input class="form-control" type="text" name="txtNome" required />
                        <label>Email</label>
                        <input class="form-control" type="text" name="txtEmail" />
                        <label>Senha</label>
                        <input class="form-control" type="password" name="txtSenha" />
                        <label>Endereço</label>
                        <input class="form-control" type="text" name="txtEndereco" />
                        <label>Bairro</label>
                        <input class="form-control" type="text" name="txtBairro" />
                        <label>Cidade</label>
                        <input class="form-control" type="text" name="txtCidade" />
                        <label>Estado</label>
                        <input class="form-control" type="text" name="txtEstado" />
                        <label>CEP</label>
                        <input class="form-control" type="text" name="txtCep" />
                    </div>
                    <button class="btn btn-primary btn-sm" type="submit">Salvar</button>

            </form>

        </div>

    </div>
</div>
<!-- /.row -->
<%@include file="../rodape.jsp" %>