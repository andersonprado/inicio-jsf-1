<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Testes</title>
<link rel=”stylesheet” type=”text/css” href=”estilo.css” />
</head>
<body><h1>teste</h1>
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
							<h:graphicImage value="/imagens/ajuda.gif" />
						</h:panelGroup>
					</f:facet>
					<h:inputText value="#{item.codigo}" size="2" maxlength="4" />
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="Nome" />
					</f:facet>
					<h:outputLink target="_blank"
						value="http://www.google.com.br/#hl=pt-BR&q=#{item.nome}">
						<h:outputText value="#{item.nome}" />
					</h:outputLink>
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="Cidade" />
					</f:facet>
					<h:outputText value="#{item.cidade} " />
					<h:graphicImage value="/imagens/bandeira_uberlandia.gif"
						rendered="#{item.cidade eq 'Uberlândia'}" />
				</h:column>
			</h:dataTable>
		</h:form>
	</f:view>
</body>
</html>