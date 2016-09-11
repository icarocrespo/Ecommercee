<%@page import="modelo.Produto"%>
<%@page import="modelo.Status"%>
<%@page import="dao.StatusDAO"%>
<%@page import="dao.ProdutoDAO"%>
<%@page import="modelo.Marca"%>
<%@page import="dao.MarcaDAO"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    // p a frente referente à pesquisa
    MarcaDAO mdao = new MarcaDAO();
    List<Marca> mlista = mdao.listar();

    CategoriaDAO cdao = new CategoriaDAO();
    List<Categoria> clista = cdao.listar();

    CategoriaDAO pcdao = new CategoriaDAO();
    List<Categoria> pclista;

    ProdutoDAO ppdao = new ProdutoDAO();
    List<Produto> pplista;

    MarcaDAO pmdao = new MarcaDAO();
    List<Marca> pmlista;

    StatusDAO psdao = new StatusDAO();
    List<Status> pslista;

    if (request.getParameter("txtFiltro") != null) {
        pclista = pcdao.listar(request.getParameter("txtFiltro"));
    } else {
        pclista = pcdao.listar();
    }
    if (request.getParameter("txtFiltro") != null) {
        pmlista = pmdao.listar(request.getParameter("txtFiltro"));
    } else {
        pmlista = pmdao.listar();
    }
    if (request.getParameter("txtFiltro") != null) {
        pplista = ppdao.listar(request.getParameter("txtFiltro"));
    } else {
        pplista = ppdao.listar();
    }
    if (request.getParameter("txtFiltro") != null) {
        pslista = psdao.listar(request.getParameter("txtFiltro"));
    } else {
        pslista = psdao.listar();
    }
%>
<html>
    <head>
        <title>Ecommerce</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/owl.carousel.css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords" content="Swim Wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <script src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    </head>
    <body>
        <div class="header">
            <div class="header-top">
                <div class="container">
                    <div class="lang_list">
                    </div>
                    <div class="top-right">
                        <ul>
                            <li class="text"><a href="login.jsp">login</a></li>
                            <li><div class="cart box_1">
                                    <a href="checkout.jsp">
                                        <span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)
                                    </a>	
                                    <p><a href="javascript:;" class="simpleCart_empty">Empty cart</a></p>
                                    <div class="clearfix"> </div>
                                </div></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="header-bottom">
                <div class="container">
                    <!--/.content-->
                    <div class="content white">
                        <nav class="navbar navbar-default" role="navigation">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <h1 class="navbar-brand"><a  href="index.jsp">Ragatanga</a></h1>
                            </div>
                            <!--/.navbar-header-->

                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                    <li><a href="index.jsp">Home</a></li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Categoria <b class="caret"></b></a>
                                        <ul class="dropdown-menu multi-column columns-3">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <ul class="multi-column-dropdown">
                                                        <%
                                                            for (Categoria item : clista) {
                                                        %>
                                                        <li><a class="list" href="#"><%=item.getNome()%></a></li>
                                                            <%
                                                                }
                                                            %>
                                                    </ul>
                                                </div>
                                            </div>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Marca <b class="caret"></b></a>
                                        <ul class="dropdown-menu multi-column columns-3">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <ul class="multi-column-dropdown">
                                                        <%
                                                            for (Marca item : mlista) {
                                                        %>
                                                        <li><a class="list" href="#"><%=item.getNome()%></a></li>
                                                            <%
                                                                }
                                                            %>
                                                </div>
                                            </div>
                                        </ul>
                                    </li>
                                </ul>
                            </div>

                            <div class="search-box">
                                <div id="sb-search" class="sb-search">
                                    <form>
                                        <input class="sb-search-input" placeholder="Texto da pesquisa" type="search" name="txtFiltro" id="search">
                                        <input class="sb-search-submit" type="submit" value="">
                                        <span class="sb-icon-search"> </span>
                                    </form>
                                </div>
                            </div>
                            <script src="js/classie.js"></script>
                            <script src="js/uisearch.js"></script>
                            <script>
                                new UISearch(document.getElementById('sb-search'));
                            </script>
                            <!-- //search-scripts -->
                            <div class="clearfix"></div>
                    </div>
                </div>
            </div>
    </body>
</html>
