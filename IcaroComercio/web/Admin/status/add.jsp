<%@page import="dao.StatusDAO"%>
<%@page import="modelo.Status"%>
<%@include file="../cabecalho.jsp" %>
<%
//String msg ="testando";
//String classe = "alert-danger";
    if(request.getParameter("txtDescricao") != null){
        StatusDAO dao = new StatusDAO();
        Status obj = new Status();
        obj.setDescricao(request.getParameter("txtDescricao"));
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
            Status
        </div>
        <div class="panel-body">
            <form action="#" method="post">

                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Descrição</label>
                        <input class="form-control" type="text" name="txtDescricao" required />
                    </div>
                    <button class="btn btn-primary btn-sm" type="submit">Salvar</button>

            </form>

        </div>

    </div>
</div>
<!-- /.row -->
<%@include file="../rodape.jsp" %>