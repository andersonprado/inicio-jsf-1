<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Agenda</title>
<link rel="stylesheet" type="text/css" href="css/estilo.css" />
</head>
<body>
	<f:view>
		<h:form>
			<h:panelGrid columns="2">
				<h:outputText value="Código: " />
				<h:inputText value="#{agendaContatoBean.contato.codigo}"
					style=" width : 246px;">

				</h:inputText>
				<h:outputText value="Nome: " id="nome" />
				<h:inputText value="#{agendaContatoBean.contato.nome}"
					style=" width : 246px;" />

				<h:outputText value="Endereço: " />
				<h:inputText value="#{agendaContatoBean.contato.endereco}"
					style="width : 246px;" />
				<h:outputText value="Sexo: " />
				<h:selectOneListbox value="#{agendaContatoBean.contato.sexo}"
					size="1" style=" width : 251px;">
					<f:selectItem itemValue="Masculino" />
					<f:selectItem itemValue="Feminino" />
				</h:selectOneListbox>
				<h:outputText />

				<h:commandButton
					actionListener="#{agendaContatoBean.incluirContato}"
					value="Incluir" style=" width : 79px;" />

			</h:panelGrid>

			<br />
			<br />
			<h:dataTable var="obj" value="#{agendaContatoBean.contatos}"
				border="1" width="100%" rendered="#{agendaContatoBean.haslista}"
				styleClass="tabela">
				<h:column>
					<f:facet name="header">
						<h:outputText value="Código" />
					</f:facet>
					<h:outputText value="#{obj.codigo}" />
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="Nome" />
					</f:facet>
					<h:outputText value="#{obj.nome}" />
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="Endereço" />
					</f:facet>
					<h:outputText value="#{obj.endereco}" />
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="Sexo" />
					</f:facet>
					<h:outputText value="#{obj.sexo}" />
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="" />
					</f:facet>
					<h:form>
						<h:inputText value="#{obj.codigo}" style="display:none;" />
						<h:commandButton
							actionListener="#{agendaContatoBean.excluirContato}"
							value="Excluir" />
					</h:form>
				</h:column>
			</h:dataTable>
			<h:commandButton action="ajuda" value="Precisa de ajuda?" />
		</h:form>




	</f:view>
</body>
</html>