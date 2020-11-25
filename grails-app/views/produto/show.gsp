
<%@ page import="treinamento.Produto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'produto.label', default: 'Produto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-produto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-produto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list produto">
			
				<g:if test="${produtoInstance?.descricaoProduto}">
				<li class="fieldcontain">
					<span id="descricaoProduto-label" class="property-label"><g:message code="produto.descricaoProduto.label" default="Descricao Produto" /></span>
					
						<span class="property-value" aria-labelledby="descricaoProduto-label"><g:fieldValue bean="${produtoInstance}" field="descricaoProduto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.nomeProduto}">
				<li class="fieldcontain">
					<span id="nomeProduto-label" class="property-label"><g:message code="produto.nomeProduto.label" default="Nome Produto" /></span>
					
						<span class="property-value" aria-labelledby="nomeProduto-label"><g:fieldValue bean="${produtoInstance}" field="nomeProduto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.precoProduto}">
				<li class="fieldcontain">
					<span id="precoProduto-label" class="property-label"><g:message code="produto.precoProduto.label" default="Preco Produto" /></span>
					
						<span class="property-value" aria-labelledby="precoProduto-label"><g:fieldValue bean="${produtoInstance}" field="precoProduto"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:produtoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${produtoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
