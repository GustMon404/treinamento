package treinamento

class Item {
    Integer quantidade;
    Produto produto;
    Vendas venda;

    static constraints = {
    }

    static mapping = {
        table 'G2_Item'
        id generator: "increment"    
    }
}
