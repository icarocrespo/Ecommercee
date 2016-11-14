<%@include file="cabecalho.jsp"%>
<div class="content">
    <div class="product-model">	 
        <div class="container">
            <h2>Nossos Produtos</h2>			
            <div class="col-md-9 product-model-sec">
                <%                    for (Produto item : pplista) {
                %>
                <a href="single.jsp?codigo=<%=item.getCodigo()%>">
                    <div class="product-grid">
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
                        <input type="text" class="item_quantity" value="1" />
                        <input type="button" class="item_add items" value="+">
                        <div class="clearfix"> </div>
                    </div>												
                </div>
            </div>
            <%
                }
            %>

        </div>	

    </div>
</div>
</div>
<!---->
<%@include file="rodape.jsp"%>
