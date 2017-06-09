<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tabela DisplayTag</title>
</head>

<body>
<c:import url="cabecalho.jsp" />

<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />
		
<!-- Tabela DisplayTag -->
<display:table name="${dao.list}" export="false" id="contato" sort="list">
	<display:column title="Id" property="id"/>
	<display:column title="Nome" property="nome" />
	<display:column title="Email" property="email" autolink="true" />
	<display:column title="Endereço" property="endereco" />
	<display:column title="Nascimento" property="dataNascimento.time" format="{0,date,dd/MM/yyyy}" />
	</display:table >
<br/><br/>

<a href="bemvindo.jsp">Voltar</a>
<c:import url="rodape.jsp"/>
	
</body>
</html>