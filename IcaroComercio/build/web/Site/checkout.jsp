<%@include file="rodape.jsp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProdutoDAO"%>
<%@page import="modelo.ItemCarrinho"%>
<%@page import="modelo.Produto"%>
<%@page import="modelo.Carrinho"%>
<%
    Carrinho carrinho;
    if(session.getAttribute("carrinho")!= null){
        carrinho = (Carrinho)session.getAttribute("carrinho");
    }else{
        carrinho = new Carrinho();
    }
    if(request.getMethod().equals("POST")){
        Integer codigo = Integer.parseInt(request.getParameter("txtCodigo"));
        Integer quantidade = Integer.parseInt(request.getParameter("txtQuantidade"));
    
        ItemCarrinho item = new ItemCarrinho();
        item.setQuantidade(quantidade);
        ProdutoDAO pdao = new ProdutoDAO();
        Produto produto = pdao.buscarPorChavePrimaria(codigo);
        item.setProduto(produto);
        if(carrinho.getItemCarrinho()==null)
        {
            List<ItemCarrinho> itens = new ArrayList<>();
            itens.add(item);
            carrinho.setItemCarrinho(itens);
            Double total = quantidade * produto.getPreco().doubleValue();
            carrinho.setTotal(new BigDecimal(total));
        }
        else{
            boolean achou = false;
            for(ItemCarrinho obj : carrinho.getItemCarrinho()){
                if(obj.getProduto().getCodigo() == codigo){
                    obj.setQuantidade(obj.getQuantidade() + Integer.parseInt(request.getParameter("txtQuantidade")));
                    achou = true;
                    break;
                }
            }
            if(!achou){
            carrinho.getItemCarrinho().add(item);
            Double total = carrinho.getTotal().doubleValue() + (quantidade * produto.getPreco().doubleValue());
            carrinho.setTotal(new BigDecimal(total));
            }
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
                <div class="close1">> </div>
                <div class="cart-sec simpleCart_shelfItem">
                    <div class="cart-item cyc">
                        <img src="../fotos/<%=item.getProduto().getImagem1()%>" class="img-responsive" alt="">
                    </div>
                    <div class="cart-item-info">
                        <h3><a href="#"> <%=item.getProduto().getTitulo()%> </a><span>Não sei o que é</span></h3>
                        <ul class="qty">
                            <li><p>Quantidade: <%=item.getQuantidade()%></p></li>
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
            <a href="finalizarCompra.jsp" class="btn  btn-primary btn-sm">Finalizar compra</a>
        </div>
    </div>
</div>
<%@include file="rodape.jsp"%>
