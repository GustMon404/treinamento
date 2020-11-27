package treinamento

class Produto {
    String nomeProduto;
    Double precoProduto;
    String descricaoProduto;

    static constraints = {
        
    }
    String toString(){
        def a = [this.nomeProduto, this.precoProduto]
    }

    static mapping = {
        table 'G2_Produto'
        id generator: "increment"    
    }
}
