
<%@ page import="treinamento.Vendas" %>
<%@ page import="treinamento.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vendas.label', default: 'Vendas')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-vendas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-vendas" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="vendas.cliente.label" default="Cliente" /></th>
					
						<g:sortableColumn property="data" title="${message(code: 'vendas.data.label', default: 'Data')}" />

						<th>Itens</th>

						<th>Situacao</th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${vendasInstanceList}" status="i" var="vendasInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${vendasInstance.id}">${fieldValue(bean: vendasInstance, field: "cliente")}</g:link></td>
					
						<td><g:formatDate date="${vendasInstance.data}" /></td>

						<td>${Item.findAllByVenda(vendasInstance).size()}</td>

						<td>${vendasInstance.setSituacao()}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${vendasInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
