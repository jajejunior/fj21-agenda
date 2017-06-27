<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<link href="css/jquery-ui.min.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.min.js"></script>

<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>	

<c:import url="cabecalho.jsp"/>
<h3>Altera contato</h3>
    <form action="mvc" method="get"><br/>
		Id: <input type="text" name="id" value="${param.id}" readonly="readonly"/><br/>
		
		Nome: <input type="text" name="nome" value="${param.nome}"/><br/>
		
		Email: <input type="text" name="email" value="${param.email}"/><br/>
		
		Endereço: <input type="text" name="endereco" value="${param.endereco}"/><br/>
	<!-- Obs -->
		Nascimento: <caelum:campoData id="dataNascimento"/>
		<br/><br/>
		<input type="hidden" name="logica" value="AlteraContatoLogic"/>
		<input type="submit" value="Gravar"/>
	</form><br/>
	<a href="mvc?logica=BemVindoLogic"><img src="img/imghome.png"></a>
<c:import url="rodape.jsp"/>	
</body>
</html>