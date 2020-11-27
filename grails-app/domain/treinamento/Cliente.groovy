package treinamento

class Cliente {
    String nomeCliente;
    String cpfCliente;
    String enderecoCliente;
    
    static constraints = {
    }
    
    String toString(){
        this.nomeCliente
    }

    static mapping = {
        table 'G2_Cliente'
        id generator: "increment"
    }
}
