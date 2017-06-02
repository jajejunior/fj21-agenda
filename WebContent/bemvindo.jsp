<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bem vindo</title>
</head>
<body>
	<%-- Comentário da JSP --%>

	<% 
		String mensagem = "Bem vindo ao JSP"; 
	%>
	
	<%
		out.print(mensagem);
	%>
	
	<br/>
	
	<%
		String desenvolvido = "Desenvolvido por Aluizio Junior";
	%>
	<%= desenvolvido %>
	<% 
		System.out.print("Tudo foi executado"); 
	%><br/><br/>
	<a href="adiciona-contato.jsp">Adicionar com Servlet</a><br/>
	<a href="lista-contatos-scriptlet.jsp">Listar com Scriptlet</a><br/>
	<a href="lista-contatos.jsp">Listar com JSTL e EL</a>
</body>
</html>