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

<div class="fieldcontain ${hasErrors(bean: vendasInstance, field: 'dataCancelamento', 'error')} required">
	<label for="dataCancelamento">
		<g:message code="vendas.dataCancelamento.label" default="Data Cancelamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCancelamento" precision="day"  value="${vendasInstance?.dataCancelamento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: vendasInstance, field: 'dataConfirmacao', 'error')} required">
	<label for="dataConfirmacao">
		<g:message code="vendas.dataConfirmacao.label" default="Data Confirmacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataConfirmacao" precision="day"  value="${vendasInstance?.dataConfirmacao}"  />

</div>

