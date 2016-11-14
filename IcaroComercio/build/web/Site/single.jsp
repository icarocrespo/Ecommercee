<%@include file="cabecalho.jsp"%>
<%    
    Produto obj = ppdao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
    ProdutoDAO daoDestaque = new ProdutoDAO();
    List<Produto> destaqueLista = daoDestaque.listarAleatorio();

%>
<div class="content">
    <div class="single">
        <div class="container">
            <div class="single-grids">
                <div class="col-md-4 single-grid1">
                    <h2>conta</h2>
                    <ul>
                        <li><a href="login.jsp">login</a></li>
                        <li><a href="login.jsp">Registrar-se</a></li>
                        <li><a href="login.jsp">Esqueceu a sua senha</a></li>
                        <li><a href="account.jsp">Minha conta</a></li>
                        <!--
                        <li><a href="login.jsp">address books</a></li>
                        <li><a href="login.jsp">wishlist</a></li>
                        <li><a href="login.jsp">order history</a></li>
                        <li><a href="login.jsp">downloads</a></li>
                        <li><a href="login.jsp">reward points</a></li>
                        <li><a href="login.jsp">return</a></li>
                        <li><a href="login.jsp">transaction</a></li>
                        <li><a href="login.jsp">newsletter</a></li>
                        <li><a href="login.jsp">recurring payments</a></li>
                        -->
                    </ul>
                </div>
                <div class="col-md-4 single-grid">		
                    <div class="flexslider">
                        <ul class="slides">
                            <li data-thumb="../fotos/<%=obj.getImagem1()%>">
                                <div class="thumb-image"> <img src="../fotos/<%=obj.getImagem1()%>" data-imagezoom="true" class="img-responsive"> </div>
                            </li>
                            <%
                                if (obj.getImagem2() != null) {
                            %>
                            <li data-thumb="../fotos/<%=obj.getImagem2()%>">
                                <div class="thumb-image"> <img src="../fotos/<%=obj.getImagem2()%>" data-imagezoom="true" class="img-responsive"> </div>
                            </li>
                            <%
                                }
                                if (obj.getImagem3() != null) {
                            %>
                            <li data-thumb="../fotos/<%=obj.getImagem3()%>">
                                <div class="thumb-image"> <img src="../fotos/<%=obj.getImagem3()%>" data-imagezoom="true" class="img-responsive"> </div>
                            </li> 
                            <%
                                }
                            %>
                        </ul>
                    </div>
                </div>	
                <div class="col-md-4 single-grid simpleCart_shelfItem">		
                    <h3><%=obj.getTitulo()%></h3>
                    <p><%=obj.getDescricao()%>.</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">R$<%=obj.getPreco()%></h5>
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
                        <form action="checkout.jsp" method="post">
                            <input type="hidden" name="txtCodigo" value="<%=obj.getCodigo()%>" />
                            <p class="qty"> Quantidade :  </p><input min="1" type="number" id="quantity" name="txtQuantidade" value="1" class="form-control input-small">
                    <div class="btn_form">
                        <button type="submit" class="add-cart item_add">ADICIONAR AO CARRINHO</button>	
                    </div>
                    </form>
                    <div class="tag">
                        <p>Categoria : <a href="products.jsp"> <%=obj.getCodcategoria().getNome()%> </a></p>
                        <p>Marca : <a href="products.jsp"> <%=obj.getCodmarca().getNome()%> </a></p>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!-- collapse -->
    <div class="collpse">
        <div class="container">
            <div class="panel-group collpse" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Descrição
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            <%=obj.getDescricao()%>.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Informações Adicionais
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">
                            Nada a dizer.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                Análises
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                        <div class="panel-body">
                            Nada a dizer tbm.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingFour">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                Ajuda
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                        <div class="panel-body">
                            Não oferecemos ajuda. Bom coffee.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- collapse -->
    <div class="related-products">
        <div class="container">
            <h3>Produtos Relacionados</h3>
            <%
                for (Produto item : destaqueLista) {
            %>
            <div class="product-model-sec single-product-grids">
                <div class="product-grid single-product">
                    <a href="single.jsp?codigo=<%=item.getCodigo()%>">
                        <div class="more-product"><span> </span></div>						
                        <div class="product-img b-link-stripe b-animate-go  thickbox">
                            <img src="../fotos/<%=item.getImagem1()%>" class="img-responsive" alt="">
                            <div class="b-wrapper">
                                <h4 class="b-animate b-from-left  b-delay03">							
                                    <button> + </button>
                                </h4>
                            </div>
                        </div>
                    </a>					
                    <div class="product-info simpleCart_shelfItem">
                        <div class="product-info-cust prt_name">
                            <h4><%=item.getTitulo()%></h4>								
                            <span class="item_price">R$<%=item.getPreco()%></span>
                            <div class="ofr">
                                <p class="pric1"><del>Nao sei o q é</del></p>
                                <p class="disc">Desconto</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>												
                    </div>
                </div>
            </div>
            <%
                }
            %>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<%@include file="rodape.jsp"%>