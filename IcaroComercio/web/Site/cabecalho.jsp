<%@page import="modelo.Venda"%>
<%@page import="dao.VendaDAO"%>
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
    VendaDAO vdao = new VendaDAO();
    Venda vobj = new Venda();
    //abaixo é referente à pesquisa
    MarcaDAO mdao = new MarcaDAO();
    List<Marca> mlista = mdao.listar();

    CategoriaDAO cdao = new CategoriaDAO();
    List<Categoria> clista = cdao.listar();

    ProdutoDAO ppdao = new ProdutoDAO();
    List<Produto> pplista;

    if (request.getParameter("filtroC") != null) {
        pplista = ppdao.listarTipoC(request.getParameter("filtroC"));
    } else if (request.getParameter("filtroM") != null) {
        pplista = ppdao.listarTipoM(request.getParameter("filtroM"));
    } else if (request.getParameter("txtFiltro") != null) {
        pplista = ppdao.listar(request.getParameter("txtFiltro"));
    } else {
        pplista = ppdao.listar();
    }
    String nome;
    if(session.getAttribute("cliente") != null){
        nome = session.getAttribute("cliente").toString();
    }
    else{
        nome = "Login";
    }


%>
<html>
    <head>
        <title>Bom Coffee</title>
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
        <!--Parte do Single -->
        <script>
            // Can also be used with $(document).ready()
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide",
                    controlNav: "thumbnails"
                });
            });
        </script>        
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Swim Wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <script src="js/jquery.min.js"></script>
        <!-- cart -->
        <script src="js/simpleCart.min.js"></script>
        <!-- cart -->
        <script src="js/imagezoom.js"></script>
        <!-- FlexSlider -->
        <script defer src="js/jquery.flexslider.js"></script>
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
        <!-- the jScrollPane script -->
        <script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
        <script type="text/javascript" id="sourcecode">
            $(function ()
            {
                $('.scroll-pane').jScrollPane();
            });
        </script>
        <!-- cart -->
        <script src="js/simpleCart.min.js"></script>
        <!-- cart -->
        <!-- the jScrollPane script -->
        <script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
        <!-- //the jScrollPane script -->
        <link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
        <!-- the mousewheel plugin -->
        <script type="text/javascript" src="js/jquery.mousewheel.js"></script>
    </head>
    <body>
        <!--header-->
        <div class="header">
            <div class="header-top">
                <div class="container">
                    <div class="lang_list">
                        <select tabindex="4" class="dropdown1" name="language">
                            <option value="5">Português</option>
                            <option value="1">English</option>
                            <option value="2">François</option>
                            <option value="3">German</option>
                            <option value="6">Español</option>
                        </select>
                    </div>
                    <div class="top-right">
                        <ul>
                            <li class="text"><a href="login.jsp"><%=nome%></a></li>
                            <li><div class="cart box_1">
                                    <a href="checkout.jsp">
                                        <span class="simpleCart_total"> R$0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)
                                    </a>	
                                    <p><a href="javascript:;" class="simpleCart_empty">Esvaziar carrinho</a></p>
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
                                <h1 class="navbar-brand"><a  href="index.jsp">Bom Coffee</a></h1>
                            </div>
                            <!--/.navbar-header-->

                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                    <li><a href="index.jsp">Home</a></li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Categoria <b class="caret"></b></a>
                                        <ul class="dropdown-menu multi-column columns-3">
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <ul class="multi-column-dropdown">
                                                        <%   
                                                            for (Categoria item : clista) {
                                                        %>
                                                        <li><a class="list" href="products.jsp?filtroC=<%=item.getCodigo()%>"><%=item.getNome()%></a></li>
                                                            <%
                                                                }
                                                            %>
                                                    </ul>
                                                </div>
                                            </div>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Marca <b class="caret"></b></a>
                                        <ul class="dropdown-menu multi-column columns-3">
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <ul class="multi-column-dropdown">
                                                        <%
                                                            for (Marca item : mlista) {
                                                        %>
                                                        <li><a class="list" href="products.jsp?filtroM=<%=item.getCodigo()%>"><%=item.getNome()%></a></li>
                                                            <%
                                                                }
                                                            %>
                                                    </ul>
                                                </div>
                                            </div>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <!--/.navbar-collapse-->
                        </nav>
                        <!--/.navbar-->
                    </div>
                    <div class="search-box">
                        <div id="sb-search" class="sb-search">
                            <form action="products.jsp" method="post">
                                <input class="sb-search-input" placeholder="Digite o texto de sua pesquisa..." type="search" name="txtFiltro" id="search">
                                <input class="sb-search-submit" type="submit" value="">
                                <span class="sb-icon-search"> </span>
                            </form>
                        </div>
                    </div>

                    <!-- search-scripts -->
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
        <!--header-->