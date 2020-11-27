package treinamento

class Vendas {
    Date data;
    Date dataConfirmacao;
    Date dataCancelamento;
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

    static constraints = {
    }
}
