package modelo;

import java.math.BigDecimal;
import modelo.Produto;

public class ItemCarrinho {
    Produto produto;
    Integer quantidade;

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }
    
//    public BigDecimal total(){
//        return 
//    }
}
