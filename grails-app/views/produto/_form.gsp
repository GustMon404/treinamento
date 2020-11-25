<%@ page import="treinamento.Produto" %>



<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'descricaoProduto', 'error')} required">
	<label for="descricaoProduto">
		<g:message code="produto.descricaoProduto.label" default="Descricao Produto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricaoProduto" required="" value="${produtoInstance?.descricaoProduto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'nomeProduto', 'error')} required">
	<label for="nomeProduto">
		<g:message code="produto.nomeProduto.label" default="Nome Produto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomeProduto" required="" value="${produtoInstance?.nomeProduto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'precoProduto', 'error')} required">
	<label for="precoProduto">
		<g:message code="produto.precoProduto.label" default="Preco Produto" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precoProduto" value="${fieldValue(bean: produtoInstance, field: 'precoProduto')}" required=""/>

</div>

