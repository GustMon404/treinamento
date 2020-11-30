package treinamento



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional


@Transactional(readOnly = true)
class VendasController {

    VendasService vendasService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max, String situacao, String cliente, Date data) {
        params.max = Math.min(max ?: 10, 100)
        if (situacao){
            respond vendasService.buscarSituacao(situacao), model: [vendasInstanceCount: Vendas.count()]
        }
        else if(cliente){
            respond vendasService.buscarCliente(cliente), model: [vendasInstanceCount: Vendas.count()]
        }
        else{
            respond Vendas.list(params), model:[vendasInstanceCount: Vendas.count()]
        }
    }

    def show(Vendas vendasInstance) {
        def itens = Item.findAllByVenda(vendasInstance)
        Double total = 0
        for(item in itens){
            total += item.quantidade * item.produto.precoProduto;
        }
        respond vendasInstance, model:[itemInstanceCount: itens, totalVenda: total]
    }

    def create() {
        respond new Vendas(params)
    }

    @Transactional
    def save(Vendas vendasInstance) {
        if (vendasInstance == null) {
            notFound()
            return
        }

        if (vendasInstance.hasErrors()) {
            respond vendasInstance.errors, view:'create'
            return
        }

        vendasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'vendas.label', default: 'Vendas'), vendasInstance.id])
                redirect vendasInstance
            }
            '*' { respond vendasInstance, [status: CREATED] }
        }
    }

    def edit(Vendas vendasInstance) {
        respond vendasInstance
    }

    @Transactional
    def update(Vendas vendasInstance) {
        if (vendasInstance == null) {
            notFound()
            return
        }

        if (vendasInstance.hasErrors()) {
            respond vendasInstance.errors, view:'edit'
            return
        }

        vendasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Vendas.label', default: 'Vendas'), vendasInstance.id])
                redirect vendasInstance
            }
            '*'{ respond vendasInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Vendas vendasInstance) {

        if (vendasInstance == null) {
            notFound()
            return
        }

        vendasInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Vendas.label', default: 'Vendas'), vendasInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    @Transactional
    def confirmar(Vendas vendasInstance){ 
        vendasService.confirmar(vendasInstance)
        redirect vendasInstance
    }
    
    @Transactional
    def cancelar(Vendas vendasInstance){
        vendasService.cancelar(vendasInstance)
        redirect vendasInstance
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'vendas.label', default: 'Vendas'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
