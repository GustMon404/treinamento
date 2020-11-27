<%@ page import="treinamento.Vendas" %>



<div class="fieldcontain ${hasErrors(bean: vendasInstance, field: 'cliente', 'error')} required">
	<label for="cliente">
		<g:message code="vendas.cliente.label" default="Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cliente" name="cliente.id" from="${treinamento.Cliente.list()}" optionKey="id" required="" value="${vendasInstance?.cliente?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendasInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="vendas.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${vendasInstance?.data}"  />

</div>

