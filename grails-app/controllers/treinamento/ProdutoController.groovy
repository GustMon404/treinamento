package treinamento



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProdutoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Produto.list(params), model:[produtoInstanceCount: Produto.count()]
    }

    def show(Produto produtoInstance) {
        respond produtoInstance
    }

    def create() {
        respond new Produto(params)
    }

    @Transactional
    def save(Produto produtoInstance) {
        if (produtoInstance == null) {
            notFound()
            return
        }

        if (produtoInstance.hasErrors()) {
            respond produtoInstance.errors, view:'create'
            return
        }

        produtoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'produto.label', default: 'Produto'), produtoInstance.id])
                redirect produtoInstance
            }
            '*' { respond produtoInstance, [status: CREATED] }
        }
    }

    def edit(Produto produtoInstance) {
        respond produtoInstance
    }

    @Transactional
    def update(Produto produtoInstance) {
        if (produtoInstance == null) {
            notFound()
            return
        }

        if (produtoInstance.hasErrors()) {
            respond produtoInstance.errors, view:'edit'
            return
        }

        produtoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Produto.label', default: 'Produto'), produtoInstance.id])
                redirect produtoInstance
            }
            '*'{ respond produtoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Produto produtoInstance) {

        if (produtoInstance == null) {
            notFound()
            return
        }

        produtoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Produto.label', default: 'Produto'), produtoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'produto.label', default: 'Produto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
