package treinamento

class Vendas {
    Date data;
    Date data_confirmacao;
    Date cancelamento;
    /*Item itens = []*/
    String situacao

    static constraints = {
        situacao inList:["Cadastrada", "Cancelada", "Confirmada"]
    }
}
