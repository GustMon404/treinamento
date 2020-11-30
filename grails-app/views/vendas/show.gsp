
<%@ page import="treinamento.Vendas" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vendas.label', default: 'Vendas')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-vendas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-vendas" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list vendas">
			
				<g:if test="${vendasInstance?.cliente}">
				<li class="fieldcontain">
					<span id="cliente-label" class="property-label"><g:message code="vendas.cliente.label" default="Cliente" /></span>
					
						<span class="property-value" aria-labelledby="cliente-label"><g:link controller="cliente" action="show" id="${vendasInstance?.cliente?.id}">${vendasInstance?.cliente?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendasInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="vendas.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${vendasInstance?.data}" /></span>
					
				</li>
				</g:if>

				<g:if test="${vendasInstance?.dataConfirmacao}">
				<li class="fieldcontain">
					<span id="dataConfirmacao-label" class="property-label"><g:message code="vendas.dataConfirmacao.label" default="Data Confirmacao" /></span>
					
						<span class="property-value" aria-labelledby="dataConfrimacao-label"><g:formatDate date="${vendasInstance?.dataConfirmacao}" /></span>
					
				</li>
				</g:if>

				<li class="fieldcontain">
					<span id="situacao-label" class="property-label"><g:message code="Situacao"/></span>
					
						<span class="property-value" aria-labelledby="situacao-label">${vendasInstance?.setSituacao()}</span>
				</li>
				<table>
					<thead>
						<tr>
							<th>Produto</th>
							<th>Quantidade</th>
							<th>Preco</th>
							<th>Total</th>
						</tr>
					</thead>

					<tbody>
						<g:each in="${itemInstanceCount}" status="i" var="itemInstance">
						<tr>
							<td><g:link controller="Item" action="edit" id="${itemInstance.id}">${itemInstance.produto.nomeProduto}</g:link></td>
							<td>${itemInstance.quantidade}</td>
							<td>${itemInstance.produto.precoProduto}</td>
							<td>${itemInstance.produto.precoProduto * itemInstance.produto.precoProduto}</td>
						</tr>
						</g:each>
					</tbody>
				</table>

			
			</ol>
			<g:form url="[resource:vendasInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${vendasInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:actionSubmit action="confirmar" value="${message(code: 'Confirmar', default: 'Confirmar')}"/>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
