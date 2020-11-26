<%@ page import="treinamento.Item" %>



<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'produto', 'error')} required">
	<label for="produto">
		<g:message code="item.produto.label" default="Produto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="produto" name="produto.id" from="${treinamento.Produto.list()}" optionKey="id" required="" value="${itemInstance?.produto?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'quantidade', 'error')} required">
	<label for="quantidade">
		<g:message code="item.quantidade.label" default="Quantidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantidade" type="number" value="${itemInstance.quantidade}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'venda', 'error')} required">
	<label for="venda">
		<g:message code="item.venda.label" default="Venda" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="venda" name="venda.id" from="${treinamento.Vendas.list()}" optionKey="id" required="" value="${itemInstance?.venda?.id}" class="many-to-one"/>

</div>

