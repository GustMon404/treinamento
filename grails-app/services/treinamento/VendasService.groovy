package treinamento

import grails.transaction.Transactional

@Transactional
class VendasService {

    def serviceMethod() {

    }

    def confirmar(vendaInstance){
        def v = Vendas.get(vendaInstance.id)
        v.confirmar()
        v.save()

        /*vendaInstance.confirmar()
        vendaInstance.save()*/
    }
    
    def precoTotal(ItemInstance){


    }

    def cancelar(vendaInstance){
        def v = Vendas.get(vendaInstance.id)
        v.cancelar()
        v.save()
    }

    def buscarSituacao(String situacao){
        Vendas.findAllBySituacao(situacao)
    }

    def buscarCliente(String cliente){
        def cliente1 = Cliente.findAllByNomeCliente(cliente)
        def venda = Vendas.findAllByCliente(cliente1)
    }
}