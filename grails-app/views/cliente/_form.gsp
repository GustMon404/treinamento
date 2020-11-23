<%@ page import="treinamento.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'cpfCliente', 'error')} required">
	<label for="cpfCliente">
		<g:message code="cliente.cpfCliente.label" default="Cpf Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpfCliente" required="" value="${clienteInstance?.cpfCliente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'enderecoCliente', 'error')} required">
	<label for="enderecoCliente">
		<g:message code="cliente.enderecoCliente.label" default="Endereco Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="enderecoCliente" required="" value="${clienteInstance?.enderecoCliente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nomeCliente', 'error')} required">
	<label for="nomeCliente">
		<g:message code="cliente.nomeCliente.label" default="Nome Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomeCliente" required="" value="${clienteInstance?.nomeCliente}"/>

</div>

