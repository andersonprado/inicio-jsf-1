<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Teste de Data table</title>
</head>
<body>
	<f:view>
		<h:form>
			<h:commandButton value="Consultar"
				actionListener="#{consultaCliente.consultar}" />
			<h:dataTable value="#{consultaCliente.clientes}" var="item"
				border="1">
				<h:column>
					<f:facet name="header">
						<h:panelGroup>
							<h:outputText value="Código" />
							<h:graphicImage value="" />
						</h:panelGroup>
					</f:facet>
					<h:outputText value="#{item.codigo}" />
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:panelGroup>
							<h:outputText value="Nome" />
							<h:graphicImage value="" />
						</h:panelGroup>
					</f:facet>
					<h:outputText value="#{item.nome}" />
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:panelGroup>
							<h:outputText value="Cidade" />
							<h:graphicImage value="" />
						</h:panelGroup>
					</f:facet>
					<h:outputText value="#{item.cidade}" />
				</h:column>
			</h:dataTable>
		</h:form>
	</f:view>
</body>
</html>