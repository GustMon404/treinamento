package treinamento

class Item {
    Integer quantidade;
    Produto produto;
    Vendas venda;

    static constraints = {
    }

    def totalItem(){
        def total = this.quantidade * this.produto.precoProduto
        return total
    }

    static mapping = {
        table 'G2_Item'
        id generator: "increment"    
    }
}
