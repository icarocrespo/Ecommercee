<%@include file="cabecalho.jsp"%>
<%
    ProdutoDAO daoDestaque = new ProdutoDAO();
    List<Produto> destaqueLista = daoDestaque.listarAleatorio();
%>

<div class="banner-section">
    <div class="container">
        <div class="banner-grids">
            <div class="col-md-6 banner-grid">
                <h2>bom coffee</h2>
                <p>Trabalho de programação IV.</p>
                <a href="products.jsp" class="button"> compre agora </a>
            </div>
            <div class="col-md-6 banner-grid1">
                <img src="../fotos/pastel.png" class="img-responsive" alt=""/><br><br><br><br>
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
                for (Produto item : pplista) {
            %>
            <div class="item">
                <img class="lazyOwl" data-src="../fotos/<%=item.getImagem1()%>" alt="">
                <div class="item-info">
                    <h5><%=item.getTitulo()%></h5>
                </div>
            </div>
            <%
                }
            %>
        </div>
        <!--sreen-gallery-cursual-->
    </div>
</div>
<div class="gallery">
    <div class="container">
        <h3>Produtos Relacionados</h3>
        <div class="gallery-grids">
            <%
                for (Produto item : destaqueLista) {
            %>
            <div class="col-md-3 gallery-grid ">
                <a href="single.jsp?codigo=<%=item.getCodigo()%>"><img src="../fotos/<%=item.getImagem1()%>" class="img-responsive" alt=""/>
                    <div class="gallery-info">
                        <div class="quick">
                            <p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> ver</p>
                        </div>
                    </div></a>
                <div class="galy-info">
                    <p><%=item.getTitulo()%></p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">R$<%=item.getPreco()%></h5>
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
            <%
                }
            %>
        </div>
        <div class="clearfix"></div>
    </div>
</div>

<%@include file="rodape.jsp"%>
