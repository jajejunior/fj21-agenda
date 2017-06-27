<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bem vindo</title>
</head>
<body>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:import url="cabecalho.jsp"/>
	
	<%-- Comentário da JSP 

	<% 
		String mensagem = "Bem vindo ao JSP"; 
	%>
	
	<%
		out.print(mensagem);
	%>
	
	<br/>
	
	<%
		String desenvolvido = "jr";
	%>
	<%= desenvolvido %>
	<% --%>
		<%System.out.print("Tudo foi executado"); %>
	<br/>
	<br/>
	<br/>
	<br/>
	<div align="center">
	
		<a href="mvc?logica=LinkAdicionaContatoLogic"><img src="img/imgadicionar.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="lista-contatos-scriptlet.jsp"><img src="img/imglistar.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="http://localhost:8080/fj21-agenda/mvc?logica=ListaContatosLogic"><img src="img/imgremover.jpg"></a>
	
	</div>
	<br/>
	<br/>
	<h3>Outros...</h3>
	<a href="lista-contatos-displaytag.jsp">Listar com DisplayTag</a><br/>
	<a href="mvc?logica=LinkAlteraContatoLogic">Altera</a><br/>
	<a href="contador.html">Contador</a><br/>
	<a href="digita-idade.jsp">Digita Idade</a><br/>
	<a href="mostra-idade.jsp">Mostra Idade</a><br/>
	<a href="primeira-logica.jsp">Primeira Logica</a><br/>
	<a href="testes.jsp">Testes</a>
	<br/>
	<c:import url="rodape.jsp"/>
</body>
</html>