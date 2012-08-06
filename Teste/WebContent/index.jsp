<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<f:view>
		<h:form>
			<h:outputLabel value="Nome: " />
			<h:inputText value="#{usuario.nome}" />
			<h:commandButton value="Enviar" actionListener="#{usuario.enviar}" />
			<br />
			
			<h:outputText value="Bem vindo: #{usuario.nome}"
				rendered="#{usuario.nome!=null}" />
		</h:form>
	</f:view>
</body>
</html>