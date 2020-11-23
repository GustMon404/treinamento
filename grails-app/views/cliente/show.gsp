
<%@ page import="treinamento.Cliente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cliente" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cliente">
			
				<g:if test="${clienteInstance?.cpfCliente}">
				<li class="fieldcontain">
					<span id="cpfCliente-label" class="property-label"><g:message code="cliente.cpfCliente.label" default="Cpf Cliente" /></span>
					
						<span class="property-value" aria-labelledby="cpfCliente-label"><g:fieldValue bean="${clienteInstance}" field="cpfCliente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.enderecoCliente}">
				<li class="fieldcontain">
					<span id="enderecoCliente-label" class="property-label"><g:message code="cliente.enderecoCliente.label" default="Endereco Cliente" /></span>
					
						<span class="property-value" aria-labelledby="enderecoCliente-label"><g:fieldValue bean="${clienteInstance}" field="enderecoCliente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.nomeCliente}">
				<li class="fieldcontain">
					<span id="nomeCliente-label" class="property-label"><g:message code="cliente.nomeCliente.label" default="Nome Cliente" /></span>
					
						<span class="property-value" aria-labelledby="nomeCliente-label"><g:fieldValue bean="${clienteInstance}" field="nomeCliente"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:clienteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${clienteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
