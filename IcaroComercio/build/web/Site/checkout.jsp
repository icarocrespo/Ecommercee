<%@page import="java.util.ArrayList"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Carrinho"%>
<%@page import="modelo.ItemCarrinho"%>
<%@include file="cabecalho.jsp"%>
<%    
    Carrinho carrinho;
    if (session.getAttribute("carrinho") != null) {
        carrinho = (Carrinho) session.getAttribute("carrinho");
    } else {
        carrinho = new Carrinho();
    }
    if (request.getMethod().equals("POST")) {

        Integer codigo = Integer.parseInt(request.getParameter("txtCodigo"));
        Integer quantidade = Integer.parseInt(request.getParameter("txtQuantidade"));
        List<ItemCarrinho> itemCarrinho = new ArrayList<>();
        ItemCarrinho item = new ItemCarrinho();
        item.setQuantidade(quantidade);
        ProdutoDAO pdao = new ProdutoDAO();
        Produto produto = pdao.buscarPorChavePrimaria(codigo);
        item.setProduto(produto);
        if (carrinho.getItemCarrinho() == null) {
            itemCarrinho.add(item);
            carrinho.setItemCarrinho(itemCarrinho);
            Double total = quantidade * produto.getPreco().doubleValue();
            carrinho.setTotal(new BigDecimal(total));
        } else {
            for(ItemCarrinho obj : carrinho.getItemCarrinho()){
                if(obj.getProduto().getCodigo() == codigo){
                    obj.setQuantidade(obj.getQuantidade() + 1);
                    break;
                }
            }
            carrinho.getItemCarrinho().add(item);
            Double total = carrinho.getTotal().doubleValue() + (quantidade * produto.getPreco().doubleValue());
            carrinho.setTotal(new BigDecimal(total));
        }
        session.setAttribute("carrinho", carrinho);
    }
%>
<div class="content">
    <div class="cart-items">
        <div class="container">
            <h2>Meu Carrinho de Compras</h2>
            <div class="cart-header">
                <%
                    if (carrinho.getItemCarrinho() != null) {
                        for (ItemCarrinho item : carrinho.getItemCarrinho()) {
                %>
                <div class="close1"> </div>
                <div class="cart-sec simpleCart_shelfItem">
                    <div class="cart-item cyc">
                        <img src="../fotos/<%=item.getProduto().getImagem1()%>" class="img-responsive" alt="">
                    </div>
                    <div class="cart-item-info">
                        <h3><a href="#"> <%=item.getProduto().getDescricao()%> </a><span>Não sei o que é</span></h3>
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
                    }
                %>
            </div>	
        </div>
    </div>
</div>
<%@include file="rodape.jsp"%>
