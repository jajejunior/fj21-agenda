<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Oi Mundo</title>
</head>
<body>
	<h3>Formul�rio:</h3> <br/>
	
	<form action="adicionaContato" method="get">
		Nome: <input type="text" name="nome" value="Charlie" required> <br/>
		Endere�o: <input type="text" name="endereco" value="Planaltina" required> <br/>
		Email: <input type="text" name="email" value="junior@gmail.com" required> <br/>
		Nascimento: <input type="text" placeholder="Ex: dd/mm/aaaa" pattern="\d{1,2}/\d{1,2}/\d{4}" class="datepicker" name="dataNascimento" ><br/>   
				 <br/>
		<input type="submit" value="Gravar">
	</form><br/><br>
	<a href="bemvindo.jsp">Voltar</a>
</body>
</html>