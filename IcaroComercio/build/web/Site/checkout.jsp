<%@page import="modelo.ItemCarrinho"%>
<%@include file="cabecalho.jsp"%>
<%
    ItemCarrinho icarrinho = new ItemCarrinho();
    Produto obj = new Produto();
    List<Produto> listaCarrinho;
    obj = ppdao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("txtCodigo")));
    
%>
<div class="content">
    <div class="cart-items">
        <div class="container">
            <h2>Meu Carrinho de Compras</h2>
            <script>$(document).ready(function (c) {
                    $('.close1').on('click', function (c) {
                        $('.cart-header').fadeOut('slow', function (c) {
                            $('.cart-header').remove();
                        });
                    });
                });
            </script>
            <div class="cart-header">
                <%
                    for(Produto item : pplista){
                        
                %>
                <div class="close1"> </div>
                <div class="cart-sec simpleCart_shelfItem">
                    <div class="cart-item cyc">
                        <img src="../fotos/<%=item.getImagem1()%>" class="img-responsive" alt="">
                    </div>
                    <div class="cart-item-info">
                        <h3><a href="#"> <%=item.getDescricao()%> </a><span>Não sei o q é</span></h3>
                        <ul class="qty">
                            <li><p>Quantidade: <%=request.getParameter("txtQuantidade")%></p></li>
                            <li><p> Tipo de Entrega</p></li>
                        </ul>
                        <div class="delivery">
                            <p>Taxas de Serviço : R$ Algum valor</p>
                            <span>Tempo de Frete</span>
                            <div class="clearfix"></div>
                        </div>	
                    </div>
                    <div class="clearfix"></div>

                </div>
                <%
                    }
                %>
            </div>
            <script>$(document).ready(function (c) {
                    $('.close2').on('click', function (c) {
                        $('.cart-header2').fadeOut('slow', function (c) {
                            $('.cart-header2').remove();
                        });
                    });
                });
            </script>		
        </div>
    </div>
</div>
<%@include file="rodape.jsp"%>
