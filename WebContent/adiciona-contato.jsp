<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>P�gina inicial - Agenda de contatos</title>
</head>
<body>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:import url="cabecalho.jsp"/>

	<h2>Formul�rio de cadastro:</h2> <br/>
	
	<form action="adicionaContato" method="get">
		Nome: <input type="text" name="nome" value="" required> <br/>
		Endere�o: <input type="text" name="endereco" value="" required> <br/>
		Email: <input type="text" name="email" value="" placeholder="Ex: email@email.com" required> <br/>
		Nascimento: <input type="text" placeholder="Ex: dd/mm/aaaa" pattern="\d{1,2}/\d{1,2}/\d{4}" class="datepicker" name="dataNascimento" ><br/>   
				 <br/>
		<input type="submit" value="Gravar">
	</form><br/><br>
	<a href="bemvindo.jsp">Voltar</a>
	<c:import url="rodape.jsp"/>
</body>
</html>