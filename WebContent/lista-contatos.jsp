<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
 <!-- Importando a taglib jstl.Core Use ctrl+space na url-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">-->
<title>Expression language + JSTL</title>
</head>
<body>
<h3>Lista de contatos:</h3> <br/>
	<!-- Cria o dao (Instancia o POJO)-->
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"/>
	
	<table>
	<!-- taglib para percorre contatos montando as linhas da tabela -->
	<!-- se o método for getLista aqui no el tem que ser chamado por lista -->
	<c:forEach var="contato" items="${dao.list}">
		<tr>
			<!-- Expression language capaz de perceber o getAtributo-->
			<td>ID: ${contato.id}</td>
			<td>NOME: ${contato.nome}</td>
			<td>ENDEREÇO: ${contato.endereco}</td>
			<td>EMAIL: ${contato.email}</td>
			<td>NASCIMENTO: ${contato.dataNascimento.time}</td>
		</tr>
	
	</c:forEach>			
	</table>
	<br/>
	<a href="bemvindo.jsp">Voltar</a>
</body>
</html>