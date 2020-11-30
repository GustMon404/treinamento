package treinamento

import grails.transaction.Transactional

@Transactional
class VendasService {

    def serviceMethod() {

    }

    def confirmar(vendaInstance){
        //vendaInstance.confirmar()
        def v = Vendas.get(vendaInstance)
        v.confirmar()
        v.save()
    }
}
