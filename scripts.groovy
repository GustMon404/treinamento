package treinamento

/*def c = new Cliente(nomeCliente:"Gustavo", cpfCliente:"123456", enderecoCliente:"rua 0")
c.save()

def c1 = Cliente.get(1)

def p1 = new Produto(nomeProduto:"Arroz", precoProduto: 32.99, descricaoProduto: "comestivel")
p1.save()

def p2 = new Produto(nomeProduto:"Feijao", precoProduto: 15.69, descricaoProduto: "comestivel")
p2.save()

def v = new Vendas(data: new Date(), dataConfirmacao: new Date(), dataCancelamento: new Date(), cliente: c1)
v.save()

def i1 = new Item( quantidade: 5, produto: p1, venda: v)
i1.save()

def i2 = new Item( quantidade: 2, produto: p2, venda: v)
i2.save()*/

def ve = Vendas.get(2)
def sa =Item.findAllByVenda(ve)