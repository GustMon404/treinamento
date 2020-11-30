package treinamento

class Vendas {
    Date data;
    Date dataConfirmacao = new Date();
    Date dataCancelamento = new Date();
    String situacao = "Cadastrada";
    Cliente cliente;

    def confirmar(){
        this.situacao = "Confirmada"
        this.dataConfirmacao = new Date()
    }

    def cancelar(){
        this.situacao = "Cancelada"
        this.dataCancelamento = new Date()
    }

    def setSituacao(){
        return this.situacao
    }

    String toString(){
        return this.cliente
    }

    static constraints = {
    }

    static mapping = {
        table 'G2_Vendas'
        id generator: "increment"
    }
}
