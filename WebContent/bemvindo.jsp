<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bem vindo</title>
</head>
<body>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:import url="cabecalho.jsp"/>
	
	<%-- Coment�rio da JSP 

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
	
	<a href="adiciona-contato.jsp">Adicionar com Servlet</a><br/>
	<a href="lista-contatos-scriptlet.jsp">Listar com Scriptlet</a><br/>
	<a href="lista-contatos.jsp">Listar com JSTL e EL</a><br/>
	<a href="lista-contatos-displaytag.jsp">Listar com DisplayTag</a>
	<br/>
	<c:import url="rodape.jsp"/>
</body>
</html>