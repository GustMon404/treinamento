
<%@ page import="treinamento.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-item" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list item">
			
				<g:if test="${itemInstance?.produto}">
				<li class="fieldcontain">
					<span id="produto-label" class="property-label"><g:message code="item.produto.label" default="Produto" /></span>
					
						<span class="property-value" aria-labelledby="produto-label"><g:link controller="produto" action="show" id="${itemInstance?.produto?.id}">${itemInstance?.produto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.quantidade}">
				<li class="fieldcontain">
					<span id="quantidade-label" class="property-label"><g:message code="item.quantidade.label" default="Quantidade" /></span>
					
						<span class="property-value" aria-labelledby="quantidade-label"><g:fieldValue bean="${itemInstance}" field="quantidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.venda}">
				<li class="fieldcontain">
					<span id="venda-label" class="property-label"><g:message code="item.venda.label" default="Venda" /></span>
					
						<span class="property-value" aria-labelledby="venda-label"><g:link controller="vendas" action="show" id="${itemInstance?.venda?.id}">${itemInstance?.venda?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:itemInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${itemInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
