
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<!DOCTYPE html>
<html>
<head>



	
<link href="css/jquery-ui.min.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.min.js"></script>



<meta charset="ISO-8859-1">
<title>Página inicial - Agenda de contatos</title>
</head>
<body>
		
	<c:import url="cabecalho.jsp"/>

	<h3>Formulário de cadastro:</h3>
		
	<form action="mvc" method="get">
		
		Nome: <input type="text" name="nome" value="" required > <br/>
		Endereço: <input type="text" name="endereco" value="" required> <br/>
		Email: <input type="text" name="email" value="" placeholder="Ex: email@email.com" required> <br/>
		Nascimento: <caelum:campoData id="dataNascimento" /><br />
		<!-- Nascimento: <input type="text" placeholder="Ex: dd/mm/aaaa" pattern="\d{1,2}/\d{1,2}/\d{4}" class="datepicker" name="dataNascimento" ><br/>-->   
				 <br/>
				 
		<input type="hidden" name="logica" value="AdicionaContatoLogic"/>		 
		<input type="submit" value="Gravar">
	
	</form><br/><br/>
	
	<a href="mvc?logica=BemVindoLogic"><img src="img/imghome.png"></a>
	
	<c:import url="rodape.jsp"/>
</body>
</html>
