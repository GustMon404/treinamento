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
}
