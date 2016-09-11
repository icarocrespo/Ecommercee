<%@page import="java.util.ArrayList"%>
<%@include file="cabecalho.jsp" %>
<%    List<Produto> produto = new ArrayList<>();
%>
<html>
    <head>
        <title>Ecommerce</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/owl.carousel.css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Swim Wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <script src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <!-- cart -->
        <script src="js/simpleCart.min.js"></script>
        <!-- cart -->
    </head>
    <body>
        <div class="banner-section">
            <div class="container">
                <div class="banner-grids">
                    <div class="col-md-6 banner-grid">
                        <h2>Produtos diversos</h2>
                        <p>Site para a matéria de Programção IV - Ecommerce.</p>
                        <a href="products.jsp" class="button"> Compre já </a>
                    </div>
                    <div class="col-md-6 banner-grid1">
                        <img src="..fotos/if.jpeg" class="img-responsive" alt=""/>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="banner-bottom">
            <div class="gallery-cursual">
                <!--requried-jsfiles-for owl-->
                <script src="js/owl.carousel.js"></script>
                <script>
                    $(document).ready(function () {
                        $("#owl-demo").owlCarousel({
                            items: 3,
                            lazyLoad: true,
                            autoPlay: true,
                            pagination: false,
                        });
                    });
                </script>
                <!--requried-jsfiles-for owl -->
                <!--start content-slider-->
                <div id="owl-demo" class="owl-carousel text-center">
                    <%
                        for (Produto item : produto) {
                    %>
                    <div class="item">
                        <img class="lazyOwl" data-src="../fotos/<%=item.getImagem1()%>" alt="name">
                        <div class="item-info">
                            <h5><%=item.getTitulo()%></h5>
                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>
            <div class="gallery">
                <div class="container">
                    <h3>Alguns produtos</h3>
                    <div class="gallery-grids">
                        <%
                            for (Produto item : produto) {
                        %>
                        <div class="col-md-3 gallery-grid ">
                            <a href="products.jsp"><img src="../fotos/<%=item.getImagem1()%>" class="img-responsive" alt=""/>
                                <div class="gallery-info">
                                    <div class="quick">
                                        <p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
                                    </div>
                                </div></a>
                            <div class="galy-info">
                                <p><%=item.getTitulo()%></p>
                                <div class="galry">
                                    <div class="prices">
                                        <h5 class="item_price">$95.00</h5>
                                    </div>
                                    <div class="rating">
                                        <span>?</span>
                                        <span>?</span>
                                        <span>?</span>
                                        <span>?</span>
                                        <span>?</span>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <%@include file="rodape.jsp" %>
    </body>
</html>