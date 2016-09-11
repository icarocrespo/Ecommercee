<%@page import="util.Criptografia"%>
<%@page import="dao.ClienteDAO"%>
<%@page import="modelo.Cliente"%>
<%@include file="../cabecalho.jsp" %>
<%
    Cliente obj = new Cliente();
    if (request.getMethod().equals("POST")) {
        ClienteDAO dao = new ClienteDAO();
        obj.setCodigo(Integer.parseInt(request.getParameter("txtCodigo")));
        obj.setNome(request.getParameter("txtNome"));
        obj.setEmail(request.getParameter("txtEmail"));
        obj.setSenha(Criptografia.convertPasswordToMD5(request.getParameter("txtSenha")));
        // Senha informada pelo usuário
        //String lala = Criptografia.convertPasswordToMD5(request.getParameter("txtSenha"));
        // Senha vinda do Banco
        //String tinkwink = Criptografia.convertPasswordToMD5(obj.getSenha().toString());
        //if(tinkwink.equals(lala)){
        //    obj.setSenha(Criptografia.convertPasswordToMD5(request.getParameter("txtSenha")));
        //}
        
        obj.setEndereco(request.getParameter("txtEndereco"));
        obj.setBairro(request.getParameter("txtBairro"));
        obj.setCidade(request.getParameter("txtCidade"));
        obj.setEstado(request.getParameter("txtEstado"));
        obj.setCep(request.getParameter("txtCep"));
        dao.alterar(obj);
        response.sendRedirect("index.jsp");
    } else {
        if (request.getParameter("codigo") == null) {
            response.sendRedirect("index.jsp");
            return;
        }
        ClienteDAO dao = new ClienteDAO();
        obj = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
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
            Cliente
        </div>
        <div class="panel-body">
            <form action="#" method="post">

                <div class="col-lg-6">
                    <div class="form-group">
                        <label>Código</label>
                        <input class="form-control" type="text" name="txtCodigo" readonly value="<%=obj.getCodigo()%>" />
                    </div>
                    <div class="form-group">
                        <label>Nome</label>
                        <input class="form-control" type="text" name="txtNome" required value="<%=obj.getNome()%>"/>
                    </div>
                    <div class="form-group">
                        <label>E-mail</label>
                        <input class="form-control" type="text" name="txtEmail" value="<%=obj.getEmail()%>"/>
                    </div>
                    <div class="form-group">
                        <label>Senha</label>
                        <input class="form-control" type="text" name="txtSenha" value="<%=obj.getSenha()%>"/>
                    </div>
                    <div class="form-group">
                        <label>Endereço</label>
                        <input class="form-control" type="text" name="txtEndereco" value="<%=obj.getEndereco()%>"/>
                    </div>
                    <div class="form-group">
                        <label>Bairro</label>
                        <input class="form-control" type="text" name="txtBairro" value="<%=obj.getBairro()%>"/>
                    </div>
                    <div class="form-group">
                        <label>Cidade</label>
                        <input class="form-control" type="text" name="txtCidade" value="<%=obj.getCidade()%>"/>
                    </div>
                    <div class="form-group">
                        <label>Estado</label>
                        <input class="form-control" type="text" name="txtEstado" value="<%=obj.getEstado()%>"/>
                    </div>
                    <div class="form-group">
                        <label>CEP</label>
                        <input class="form-control" name="txtCep" value="<%=obj.getCep()%>"/>
                    </div>

                    <button class="btn btn-primary btn-sm" type="submit">Salvar</button>
            </form>
        </div>
    </div>
</div>
<!-- /.row -->
<%@include file="../rodape.jsp" %>